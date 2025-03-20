import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart' hide Route;
import 'package:todo_app/data/data.dart';
import 'package:todo_app/gen/assets.gen.dart';
import 'package:todo_app/presentation/presentation.dart';

class ProductItemWidget extends StatefulWidget {
  const ProductItemWidget({
    required this.product,
    required this.isSelected,
    required this.onSelectChanged,
    super.key,
  });

  final Product product;
  final bool isSelected;
  final Function(bool?) onSelectChanged;

  @override
  State<ProductItemWidget> createState() => _ProductItemWidgetState();
}

class _ProductItemWidgetState extends State<ProductItemWidget> {
  Product get product => widget.product;

  String get id => widget.product.id;

  String get title => product.name;
  String get description => product.description;
  DateTime get date => product.createdAt;
  String get currency => product.currency;
  String get imageURL => product.image;
  String get stock => product.stock;
  String get price => product.price;
  String get departament => product.departament;
  String get stockText => int.parse(stock) > 0 ? stock : 'Sin disponibilidad';

  // String get type => widget.expenseElement.type!;

  Color get colorLetter => Colors.black;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bloc = context.read<ProductBloc>();
    final l10n = context.l10n;

    return FadeInLeft(
      duration: const Duration(milliseconds: 300),
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 4,
            vertical: 8,
          ),
          child: Container(
            height: 100,
            width: MediaQuery.of(context).size.width - 8,
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
                bottomRight: Radius.circular(14),
                topRight: Radius.circular(25),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
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
                                width: 70,
                                height: 70,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
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
                          // Icon(
                          //   BootstrapIcons.heart_fill,
                          //   size: 14,
                          //   color: isFavorite ? Colors.red : Colors.white,
                          // ),
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
                    ],
                  ),
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(1),
                          child: Checkbox(
                            value: widget.isSelected,
                            onChanged: widget.onSelectChanged,
                            side: const BorderSide(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
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
