import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shopping/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:online_shopping/common/widgets/texts/product_price_text.dart';
import 'package:online_shopping/common/widgets/texts/product_title_text.dart';
import 'package:online_shopping/common/widgets/texts/section_heading.dart';
import 'package:online_shopping/features/shop/screens/product%20reviews/product_reviews.dart';
import 'package:online_shopping/features/shop/screens/product_details/widgets/choice_chip.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TCircularContainer(
          padding: const EdgeInsets.only(
              top: TSizes.md, right: TSizes.md, bottom: TSizes.md),
          backgroundColor: isDark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TSectionHeadingTitle(
                    title: "Variation",
                    showActionButton: false,
                    titleColor: isDark ? Colors.white : Colors.black,
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Price: ",
                            style: TextStyle(
                                color: isDark ? Colors.white : Colors.black),
                          ),
                          TProductPriceText(
                              sign: "€",
                              price: " 19.99",
                              color: isDark ? Colors.white : Colors.black,
                              isSmall: false)
                        ],
                      ),
                      Row(
                        children: [
                          const Text("Stock: "),
                          Text(
                            " In Stock",
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              const TProductTitleText(title: "Describtion 4 Lines", smallStyle: true),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            TSectionHeadingTitle(
              padding: 0,
              title: "Colors",
              showActionButton: false,
              titleColor: isDark ? Colors.white : Colors.black,
            ),
            Wrap(
              spacing: 3,
              children: [
                TChoiceChip(selected: true, onSelected: (p1) {}, text: "Green"),
                TChoiceChip(
                    selected: false, onSelected: (p2) {}, text: "Yellow"),
                TChoiceChip(selected: false, onSelected: (p2) {}, text: "Blue"),
                TChoiceChip(selected: false, onSelected: (p2) {}, text: "Red"),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            TSectionHeadingTitle(
              padding: 0,
              title: "Sizes",
              showActionButton: false,
              titleColor: isDark ? Colors.white : Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Wrap(
                spacing: 5,
                children: [
                  TChoiceChip(
                      selected: true, onSelected: (p2) {}, text: "EU 32"),
                  TChoiceChip(
                      selected: false, onSelected: (p2) {}, text: "EU 34"),
                  TChoiceChip(
                      selected: true, onSelected: (p2) {}, text: "EU 36"),
                  TChoiceChip(
                      selected: false, onSelected: (p2) {}, text: "EU 38"),
                  TChoiceChip(
                      selected: true, onSelected: (p2) {}, text: "EU 40"),
                  TChoiceChip(
                      selected: false, onSelected: (p2) {}, text: "EU 42"),
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),
        TSectionHeadingTitle(
          title: "Description",
          showActionButton: false,
          titleColor: isDark ? Colors.white : Colors.black,
          padding: 0,
        ),
        const ReadMoreText(
          "Nike shoes offer a perfect blend of style and performance, featuring durable materials, cushioned soles for all-day comfort, and sleek designs that adapt to any activity. Ideal for athletes and casual wear, they bring both quality and iconic style to every step.",
          trimLines: 3,
          trimMode: TrimMode.Line,
          trimCollapsedText: "Show more",
          trimExpandedText: "Show less",
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        const Divider(),
        TSectionHeadingTitle(
          title: "Reviews",
          showActionButton: true,
          titleColor: isDark ? Colors.white : Colors.black,
          padding: 0,
          onPressed: () {
            Get.to(const ProductReviews());
          },
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
      ],
    );
  }
}
