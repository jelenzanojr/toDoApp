// import 'package:animate_do/animate_do.dart';
// import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:todo_app/data/models/product/product.dart';
import 'package:todo_app/presentation/presentation.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';

class ProductView extends StatefulWidget {
  const ProductView({super.key});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    context.read<ProductBloc>().add(
          const ProductEvent.loadData(''),
        );
    WidgetsBinding.instance.addPostFrameCallback((_) {});
    final l10n = context.l10n;

    return BlocConsumer<ProductBloc, ProductState>(
      listener: (context, state) {
        state.whenOrNull(
          done: (_, loading, error, __, successful, msg) {
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

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    errorText,
                    style: const TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.red,
                ),
              );
            } else if (successful ?? false) {
              final okText = msg ?? 'Tarea completada';
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    okText,
                    style: const TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.green,
                ),
              );
              if (okText
                  .toLowerCase()
                  .contains('Productos importados'.toLowerCase())) {
                context.read<HomeBloc>().add(const HomeEvent.loadData(''));
              }
            }
          },
        );
      },
      builder: (context, state) {
        return Scaffold(
          key: SizeConfig.scaffoldHomeKey,
          drawer: const SideMenu(),
          appBar: AppBar(
            title: Text(
              l10n.productNotReview,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            leading: const IconButton(
              icon: Icon(Icons.menu),
              color: Colors.white,
              onPressed: SizeConfig.controlMenu,
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.check,
                  color: Colors.white,
                ),
                onPressed: () async {
                  context.read<ProductBloc>().add(
                        const ProductEvent.importData(),
                      );
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.refresh,
                  color: Colors.white,
                ),
                onPressed: () {
                  context.read<ProductBloc>().add(
                        const ProductEvent.loadData(''),
                      );
                },
              )
            ],
          ),
          body: SafeArea(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  // It takes 5/6 part of the screen
                  child: SafeArea(
                    child: Column(
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            primary: false,
                            padding: const EdgeInsets.all(
                              SizeConfig.kDefaultPadding,
                            ),
                            child: Column(
                              children: [
                                BlocBuilder<ProductBloc, ProductState>(
                                  builder: (context, state) {
                                    return state.when(
                                      loading: () => const SpinKitRipple(
                                        color: Colors.white,
                                      ),
                                      done: (
                                        companies,
                                        loading,
                                        _,
                                        __,
                                        ___,
                                        ____,
                                      ) =>
                                          loading ?? false
                                              ? const LinearProgressIndicator(
                                                  color: Colors.white,
                                                  backgroundColor: Colors.green,
                                                )
                                              : const SizedBox(height: 10),
                                    );
                                  },
                                ),
                                BlocBuilder<ProductBloc, ProductState>(
                                  builder: (context, state) {
                                    final l10n = context.l10n;
                                    var loading = false;
                                    var productsG = <Product>[];
                                    state.when(
                                      loading: () {
                                        loading = true;
                                      },
                                      done: (
                                        products,
                                        loading,
                                        error,
                                        _,
                                        __,
                                        ___,
                                      ) {
                                        productsG = products;
                                      },
                                    );

                                    if (loading == true ||
                                        productsG.isNotEmpty) {
                                      return const ProductListView();
                                    }

                                    return Center(
                                      child: Text(
                                        l10n.notProducts,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
