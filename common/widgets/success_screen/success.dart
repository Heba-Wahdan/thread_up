// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:online_shopping/common/styles/spacing_styles.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/constants/text_strings.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.subtitle,
    required this.onPressed,
    required this.image,
    required this.title,
  });

  final String image, title, subtitle;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(height: 300, width: 300, image),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text(
                subtitle,
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
                    onPressed: onPressed,
                    child: const Text(TTexts.continuee,
                        style: TextStyle(color: Colors.white)),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
