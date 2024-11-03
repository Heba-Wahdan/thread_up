import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shopping/common/widgets/success_screen/success.dart';
import 'package:online_shopping/features/authentication/screens/login/login.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/image_strings.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/constants/text_strings.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Get.offAll(const LoginScreen());
              },
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              Image.asset(height: 300, width: 300, TImages.verifyImage),
              const Text(
                TTexts.verifyEmail,
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text(
                TTexts.emailSupport,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text(
                TTexts.verifyEmailText,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isDark
                        ? TColors.buttonPrimary
                        : Colors.black, // Button background color
                    foregroundColor: Colors.black, // Text color
                  ),
                  onPressed: () {
                    Get.to(SuccessScreen(
                      image: isDark
                          ? TImages.successfulImageDark
                          : TImages.successfulImage,
                      title: TTexts.accountSuccessfulTitle,
                      subtitle: TTexts.accountSuccessfulSubTitle,
                      onPressed: () {
                        Get.to(
                            const LoginScreen()); // This ensures navigation happens on button press
                      },
                    ));
                  },
                  child: const Text(TTexts.continuee,
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  TTexts.resendEmail,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
