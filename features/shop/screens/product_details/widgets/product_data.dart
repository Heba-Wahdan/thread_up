import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/texts/product_price_text.dart';
import 'package:online_shopping/features/shop/screens/product_details/widgets/rating.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class ProductData extends StatelessWidget {
  const ProductData({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nike",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Text(
                  "Nike Jordan Air 1 Mid",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            const SizedBox(
              width: 133,
            ),
            Column(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.ios_share))
              ],
            )
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),
        const TProductPriceText(
            isSmall: false,
            sign: "€",
            price: "19.99",
            color: Color.fromARGB(255, 199, 42, 32)),
        Padding(
          padding: const EdgeInsets.only(left: 3),
          child: Row(
            children: [
              TProductPriceText(
                isSmall: true,
                sign: "€",
                color: isDark ? Colors.white : Colors.black,
                price: "29",
                lineThrough: true,
              ),
              const SizedBox(
                width: 5,
              ),
              TProductPriceText(
                isSmall: true,
                sign: "%",
                price: "-25",
                color: isDark
                    ? Colors.red
                    : const Color.fromARGB(255, 204, 57, 49),
              ),
              const SizedBox(
                width: 207,
              ),
              const TRating(),
            ],
          ),
        ),
      ],
    );
  }
}
