import 'package:flutter/material.dart';
import 'package:penyuluhan/constants.dart';
import 'package:penyuluhan/models/product.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            product.title,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
                color:
                    Colors.white), //Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(height: kDefaultPaddin),
          Row(
            children: <Widget>[
              RichText(
                  text: TextSpan(children: [
                TextSpan(text: "Harga\n"),
                TextSpan(
                  text: "Rp ${product.price}",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ])),
              SizedBox(width: kDefaultPaddin),
              Expanded(
                child: Image.asset(product.image, fit: BoxFit.fill),
              )
            ],
          ),
        ],
      ),
    );
  }
}
