import 'package:flutter/material.dart';
import 'package:todo_app/data/datasources/database_datasource.dart';
import 'package:todo_app/presentation/presentation.dart';

class ProductDetailsDialog extends StatefulWidget {
  const ProductDetailsDialog({required this.product, super.key});
  final ProductEntityData product;

  @override
  ProductDetailsDialogState createState() => ProductDetailsDialogState();

  static Future<void> showDialogProductDetails(
    BuildContext context,
    ProductEntityData product,
  ) async {
    await showDialog(
      context: context,
      // barrierDismissible: false,
      builder: (BuildContext context) {
        return Theme(
          data: Theme.of(context).copyWith(
            // Cambia el fondo del AlertDialog aquí
            dialogBackgroundColor: Colors.blue,
          ),
          child: ProductDetailsDialog(
            product: product,
          ),
        );
      },
    );
  }
}

class ProductDetailsDialogState extends State<ProductDetailsDialog> {
  final textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(l10n.productDetail),
        ],
      ),
      content: SizedBox(
        height: 500,
        width: 350,
        child: _ProductDetailWidget(
          productDetails: widget.product,
        ),
      ),
    );
  }
}

class _ProductDetailWidget extends StatelessWidget {
  const _ProductDetailWidget({
    required this.productDetails,
  });

  final ProductEntityData productDetails;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: ImageNetworkWidget(
                    imageUrl: productDetails.image!,
                    width: 250,
                    height: 250,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  productDetails.name!,
                  style: const TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.clip,
                  maxLines: 2,
                  // style: Theme.of(context).textTheme.display1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '${l10n.quantity}: ${productDetails.stock}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                      overflow: TextOverflow.ellipsis,
                      // style: Theme.of(context).textTheme.title,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '\$${productDetails.price}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                      overflow: TextOverflow.ellipsis,
                      // style: Theme.of(context).textTheme.title,
                    ),
                  ],
                ),
                Text(
                  productDetails.description!,
                  style: const TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.clip,
                  maxLines: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      productDetails.isSelect ? l10n.approve : l10n.notApprove,
                      style: TextStyle(
                        color: productDetails.isSelect
                            ? Colors.green.shade100
                            : Colors.red.shade100,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
