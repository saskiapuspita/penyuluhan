import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:penyuluhan/constants.dart';
import 'package:penyuluhan/models/product.dart';
import 'package:penyuluhan/views/cart_counter.dart';
import 'package:penyuluhan/views/color_and_size.dart';
import 'package:penyuluhan/views/counter_with_fav_button.dart';
import 'package:penyuluhan/views/description.dart';
import 'package:penyuluhan/views/product_title_with_image.dart';

class ProductDetailsBody extends StatelessWidget {
  final Product product;

  const ProductDetailsBody({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final TextStyle? headlineMedium;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  height: size.height,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: size.height * 0.3),
                        padding: EdgeInsets.only(
                          top: size.height * 0.12,
                          left: kDefaultPaddin,
                          right: kDefaultPaddin,
                        ),
                        //height: 750,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24),
                            )),
                        child: Column(
                          children: <Widget>[
                            //ColorAndSize(product: product),
                            Description(product: product),
                            CounterWithFavButton(
                              product: product,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: kDefaultPaddin),
                              child: Row(
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.only(right: kDefaultPaddin),
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        border:
                                            Border.all(color: product.color)),
                                    child: IconButton(
                                      icon: const Icon(CupertinoIcons.cart_fill,
                                          color: Colors.black),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                        height: 50,
                                        child: TextButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    product.color),
                                          ),
                                          onPressed: () {},
                                          child: Text(
                                            "Beli sekarang".toUpperCase(),
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        )),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      ProductTitleWithImage(product: product)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
