import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:todo_app/data/data.dart';
import 'package:todo_app/gen/assets.gen.dart';
import 'package:todo_app/presentation/presentation.dart';

class ProductLocalItemWidget extends StatefulWidget {
  const ProductLocalItemWidget({
    required this.contract,
    required this.pagingController,
    super.key,
  });

  final ProductEntityData contract;
  final PagingController<int, ProductEntityData> pagingController;

  @override
  State<ProductLocalItemWidget> createState() => _ProductLocalItemWidgetState();
}

class _ProductLocalItemWidgetState extends State<ProductLocalItemWidget> {
  ProductEntityData get product => widget.contract;

  int get id => product.id;
  String get title => product.name ?? '';
  String get description => product.description ?? '';
  DateTime get date => product.createdAt ?? DateTime.now();
  String get currency => product.currency ?? '';
  String get imageURL => product.image ?? '';
  String get externalId => product.externalId;
  String get stock => product.stock;
  String get price => product.price;
  String get departament => product.departament ?? '';
  bool get isSelect => product.isSelect;

  String get stockText => int.parse(stock) > 0 ? stock : 'Sin disponibilidad';

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        ProductDetailsDialog.showDialogProductDetails(context, product);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
        child: Container(
          height: 130,
          width: MediaQuery.of(context).size.width - 10,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue.shade300,
                Colors.blue.shade700,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(14),
              bottomRight: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 2,
              vertical: 4,
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        if (imageURL.isEmpty)
                          Padding(
                            padding: const EdgeInsets.all(2),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                              ),
                              child: Assets.images.defaultProduct.image(
                                width: 64,
                                height: 64,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        if (imageURL.isNotEmpty)
                          Padding(
                            padding: const EdgeInsets.all(2),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(25),
                                // topRight: Radius.circular(25),
                              ),
                              child: ImageNetworkWidget(
                                imageUrl: imageURL,
                                width: 80,
                                height: 80,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Text(
                              title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.clip,
                              maxLines: 2,
                            ),
                          ),
                          const SizedBox(width: 5),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Text(
                              '\$$price',
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Text(
                              '${l10n.quantity}: $stockText',
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Text(
                              isSelect ? l10n.approve : l10n.notApprove,
                              style: TextStyle(
                                color: isSelect
                                    ? Colors.green.shade100
                                    : Colors.red.shade100,
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3),
                      child: IconButton(
                        icon: const Icon(
                          Icons.delete,
                          size: 35,
                        ),
                        color: Colors.white,
                        onPressed: () async {
                          final theme = Theme.of(context);
                          await AwesomeDialog(
                            context: context,
                            dialogType: DialogType.INFO_REVERSED,
                            headerAnimationLoop: false,
                            animType: AnimType.BOTTOMSLIDE,
                            title: l10n.attention,
                            titleTextStyle: theme.textTheme.titleLarge
                                ?.copyWith(color: Colors.black),
                            desc: l10n.deleteProduct,
                            descTextStyle: const TextStyle(
                              color: Colors.black,
                            ),
                            buttonsTextStyle:
                                const TextStyle(color: Colors.black),
                            showCloseIcon: true,
                            btnCancelOnPress: () {},
                            btnOkOnPress: () {
                              context.read<HomeBloc>().add(
                                    HomeEvent.delete(product),
                                  );
                            },
                            btnCancelText: l10n.cancel,
                            btnOkText: l10n.accept,
                            btnCancelIcon: Icons.arrow_back,
                            btnOkIcon: Icons.check,
                          ).show();
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3),
                      child: IconButton(
                        icon: const Icon(
                          Icons.visibility,
                          size: 35,
                        ),
                        color: Colors.white,
                        onPressed: () {
                          ProductDetailsDialog.showDialogProductDetails(
                            context,
                            product,
                          );
                        },
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
