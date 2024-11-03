import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/images/rounded_images.dart';
import 'package:online_shopping/utils/constants/image_strings.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return SizedBox(
      height: 60,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        physics: const AlwaysScrollableScrollPhysics(),
        separatorBuilder: (_, __) {
          return const SizedBox(
            width: TSizes.spaceBtwItems / 2,
          );
        },
        itemBuilder: (_, index) {
          return TRoundedImage(
            borderRadius: 5,
            backgroundColor: isDark
                ? const Color.fromARGB(255, 57, 57, 58)
                : const Color.fromARGB(255, 239, 239, 240),
            imageUrl: TImages.product7,
          );
        },
      ),
    );
  }
}
