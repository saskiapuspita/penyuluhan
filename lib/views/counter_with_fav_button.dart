import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:penyuluhan/constants.dart';
import 'package:penyuluhan/models/product.dart';
import 'package:penyuluhan/views/cart_counter.dart';

class CounterWithFavButton extends StatelessWidget {
  const CounterWithFavButton({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: kTextColor),
              children: [
                //TextSpan(text: "Stock Available\n"),
                TextSpan(
                  text: "Stock Available",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
        CartCounter(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 32,
            width: 32,
            child: IconButton(
              icon: const Icon(
                CupertinoIcons.heart_fill,
                color: Color(0xFFFF6464),
              ),
              //iconSize: 80,
              onPressed: () {},
            ),
          ),
        ),
        // Container(
        //   padding: EdgeInsets.all(8),
        //   height: 32,
        //   width: 32,
        //   decoration:
        //       BoxDecoration(color: Color(0xFFFF6464), shape: BoxShape.circle),
        //   child: const Icon(
        //     CupertinoIcons.heart_fill,
        //     color: Colors.white,
        //   ),
        // ),
      ],
    );
  }
}
