import 'package:flutter/material.dart';
import 'package:online_shopping/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(
          onDotClicked: OnBoardingController.instance.dotNavigationClick,
          controller: OnBoardingController.instance.pageController,
          count: 3,
          effect: ExpandingDotsEffect(
              dotHeight: 10,
              activeDotColor: isDark ? Colors.white : Colors.black),
        ));
  }
}
