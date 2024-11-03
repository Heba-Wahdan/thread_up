import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/brands/brand_showcase.dart';
import 'package:online_shopping/common/widgets/layout/gird_layout.dart';
import 'package:online_shopping/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:online_shopping/common/widgets/texts/section_heading.dart';
import 'package:online_shopping/utils/constants/image_strings.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Column(
            children: [
              const TShowBrandCase(
                images: [TImages.product5, TImages.product6, TImages.product7],
              ),
              TSectionHeadingTitle(
                title: "You might like",
                showActionButton: true,
                titleColor: isDark ? Colors.white : Colors.black,
              ),
              TGridLayout(
                  itemBuilder: (_, index) {
                    return const TProductCardVertical();
                  },
                  itemCount: 4,
                  mainAxisExtent: 275)
            ],
          ),
        ]);
  }
}
