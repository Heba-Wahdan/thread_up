import 'package:flutter/material.dart';
import 'package:online_shopping/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/device/device_utility.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      right: TSizes.defaultSpace,
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: isDark
                ? WidgetStateProperty.all(Colors.white)
                : WidgetStateProperty.all(Colors.black),
            // Remove focus ripple
            side: WidgetStateProperty.all(BorderSide(
              color: isDark ? Colors.white : Colors.black,
            )), // Set the border color if desired
          ),
          onPressed: () {
            OnBoardingController.instance.nextPage();
          },
          child: Icon(
            Icons.keyboard_arrow_right,
            color: isDark ? Colors.black : Colors.white,
          )),
    );
  }
}
