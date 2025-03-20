import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:todo_app/data/data.dart';
import 'package:todo_app/presentation/presentation.dart';

class HomeProductListView extends StatefulWidget {
  const HomeProductListView({super.key});

  @override
  State<HomeProductListView> createState() => _HomeProductListViewState();
}

class _HomeProductListViewState extends State<HomeProductListView> {
  static const _pageSize = 7; // Tamaño de la página para la paginación
  final PagingController<int, ProductEntityData> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    super.initState();

    _pagingController.addPageRequestListener(_fetchPage);
  }

  Future<void> _fetchPage(int pageKey) async {
    final bloc = context.read<HomeBloc>();
    if (pageKey != 0) {
      final contractsG = await bloc.cargarDatos();

      // Escuchar los estados del Bloc para manejar la paginación

      final isLastPage = contractsG.length < _pageSize;
      if (isLastPage) {
        _pagingController.appendLastPage(contractsG);
      } else {
        final nextPageKey = pageKey + contractsG.length;
        _pagingController.appendPage(contractsG, nextPageKey);
      }
    }
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return CustomScrollView(
      shrinkWrap: true,
      // physics: const BouncingScrollPhysics(),
      // primary: false,
      slivers: [
        BlocConsumer<HomeBloc, HomeState>(
          listener: (context, state) {
            var loadingG = 0;
            state.when(
              loading: () {
                loadingG = 1;
                _pagingController.refresh();
              },
              done: (products, loading, error, message) {
                if (error != null) {
                  final l10n = context.l10n;
                  var errorText = '';

                  errorText = error.whenOrNull(
                        unauthorizedError: () => l10n.errorLoginTimeOut,
                      ) ??
                      '';

                  if (errorText.isEmpty) {
                    errorText = l10n.error(error);
                  }

                  var errorAuthorization = false;

                  errorAuthorization = error.whenOrNull(
                        unauthorizedError: () => true,
                      ) ??
                      false;

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        errorText,
                        style: const TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.red,
                    ),
                  );
                } else if ((loading ?? false) ||
                    error != null ||
                    message != null) {
                  if (loading ?? false) {
                    loadingG = 2;
                  }
                  if (message != null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          message,
                          style: const TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.green,
                      ),
                    );
                  }
                  return;
                }

                _pagingController.appendPage(products, products.length);
              },
            );
          },
          builder: (context, state) {
            return PagedSliverList<int, ProductEntityData>(
              pagingController: _pagingController,
              builderDelegate: PagedChildBuilderDelegate<ProductEntityData>(
                itemBuilder: (context, contract, index) =>
                    ProductLocalItemWidget(
                  key: Key('${contract.id}'),
                  contract: contract,
                  pagingController: _pagingController,
                ),
                newPageProgressIndicatorBuilder: (_) => const Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                ),
                firstPageErrorIndicatorBuilder: (_) => Text(l10n.errorToLoad),
                noItemsFoundIndicatorBuilder: (_) => Center(
                  child: Text(
                    l10n.notProducts,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
