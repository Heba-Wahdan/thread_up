import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shopping/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:online_shopping/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:online_shopping/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:online_shopping/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:online_shopping/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:online_shopping/utils/constants/image_strings.dart';
import 'package:online_shopping/utils/constants/text_strings.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    final controLler = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controLler.pageController,
            onPageChanged: controLler.updatePageIndicator,
            children: [
              OnBoardingPage(
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
                image: isDark
                    ? TImages.onBoardingImageDark1
                    : TImages.onBoardingImage1,
              ),
              OnBoardingPage(
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
                image: isDark
                    ? TImages.onBoardingImageDark2
                    : TImages.onBoardingImage2,
              ),
              OnBoardingPage(
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
                image: isDark
                    ? TImages.onBoardingImageDark3
                    : TImages.onBoardingImage3,
              ),
            ],
          ),
          const onBoardingSkip(),
          const OnBoardingDotNavigation(),
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
