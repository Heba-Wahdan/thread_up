import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/brands/brand_card.dart';
import 'package:online_shopping/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/image_strings.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class TShowBrandCase extends StatelessWidget {
  const TShowBrandCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return TCircularContainer(
      showBorder: true,
      backgroundColor: Colors.transparent,
      borderColor: isDark ? Colors.white : Colors.black,
      margin: const EdgeInsets.all(TSizes.spaceBtwItems),
      child: Column(
        children: [
          TBrandCard(
            showBorder: false,
            brandTitle: "Nike",
            brandImageIcon: isDark ? TImages.nikeLogoDark : TImages.nikeLogo,
          ),
          Row(
            children: images.map((image) {
              return brandTopProductImage(image, context);
            }).toList(),
          )
        ],
      ),
    );
  }
}

Widget brandTopProductImage(String image, context) {
  final isDark = THelperFunctions.isDarkMode(context);
  return Expanded(
    child: TCircularContainer(
      margin: const EdgeInsets.only(right: TSizes.sm, left: TSizes.sm),
      height: 100,
      backgroundColor: isDark ? TColors.dark : TColors.light,
      child: Image.asset(
        image,
        fit: BoxFit.contain,
      ),
    ),
  );
}
