import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/image_strings.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/constants/text_strings.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              Image.asset(
                  height: 150,
                  isDark ? TImages.emailBoxDark : TImages.emailBox),
              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),
              const Text(
                TTexts.resetPasswordTitle,
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),
              Text(
                TTexts.resetPasswordEmail,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const Text(TTexts.resetPasswordSubTitle),
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
                  ),
                  onPressed: () {},
                  child: const Text(TTexts.done),
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),
              TextButton(
                  onPressed: () {}, child: const Text(TTexts.resendEmail))
            ],
          ),
        ),
      ),
    );
  }
}
