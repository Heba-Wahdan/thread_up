import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shopping/features/authentication/screens/signup/verify_email.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/constants/text_strings.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                child: TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: TTexts.firstName),
                ),
              ),
              const SizedBox(
                width: TSizes.spaceBtwInputFields,
              ),
              Flexible(
                child: TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: TTexts.lastName),
                ),
              )
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.edit), labelText: TTexts.username),
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email), labelText: TTexts.email),
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.phone), labelText: TTexts.phoneNumber),
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: TTexts.password,
                suffixIcon: Icon(Icons.visibility_off)),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          Row(
            children: [
              Checkbox(
                  activeColor: isDark ? TColors.buttonPrimary : Colors.black,
                  value: true,
                  onChanged: (value) {}),
              const SizedBox(
                width: TSizes.spaceBtwItems,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: TTexts.iAgreeTo,
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: TTexts.privacyPolicy,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .apply(decoration: TextDecoration.underline)),
                    TextSpan(
                        text: TTexts.and,
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: TTexts.terms,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .apply(decoration: TextDecoration.underline)),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.to(const VerifyEmailScreen());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: isDark
                    ? TColors.buttonPrimary
                    : Colors.black, // Button background color
                foregroundColor: Colors.black, // Text color
              ),
              child: const Text(
                TTexts.createAccount,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
        ],
      ),
    );
  }
}
