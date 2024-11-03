import 'package:flutter/material.dart';
import 'package:online_shopping/utils/constants/image_strings.dart';
import 'package:online_shopping/utils/constants/sizes.dart';

class TSocialButtons extends StatelessWidget {
  const TSocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
          ),
          child: Image.asset(
            TImages.facebook,
            height: TSizes.iconLg,
            width: TSizes.iconLg,
          ),
        ),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
          ),
          child: Image.asset(
            TImages.google,
            height: TSizes.iconLg,
            width: TSizes.iconLg,
          ),
        ),
      ],
    );
  }
}
