import 'package:flutter/material.dart';
import 'package:todo_app/presentation/presentation.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return CustomScrollView(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      primary: false,
      // padding: EdgeInsets.all(SizeConfig.kDefaultPadding),
      slivers: [
        BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            return SliverList(
              delegate: SliverChildListDelegate(
                [
                  ...state.when(
                    loading: () => [],
                    done: (
                      elements,
                      loading,
                      _,
                      selectedItems,
                      __,
                      ___,
                    ) =>
                        [
                      if (loading ?? false) const SizedBox(height: 10),
                      ...elements.map(
                        (e) => ProductItemWidget(
                          key: Key(e.id),
                          product: e,
                          isSelected:
                              context.watch<ProductBloc>().state.maybeMap(
                                    done: (state) =>
                                        state.selectedItems.contains(e.id),
                                    orElse: () => false,
                                  ),
                          onSelectChanged: (isSelected) {
                            context.read<ProductBloc>().add(
                                  ProductEvent.selectItem(
                                    e.id,
                                    isSelected ?? false,
                                  ),
                                );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
