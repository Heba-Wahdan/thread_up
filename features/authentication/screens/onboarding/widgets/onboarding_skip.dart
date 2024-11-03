import 'package:flutter/material.dart';
import 'package:online_shopping/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class onBoardingSkip extends StatelessWidget {
  const onBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Positioned(
        top: TSizes.appBarHeight,
        right: TSizes.defaultSpace,
        child: TextButton(
          onPressed: () {
            OnBoardingController.instance.skipPage();
          },
          child: Text(
            "skip",
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: isDark ? Colors.white : Colors.black),
          ),
        ));
  }
}
