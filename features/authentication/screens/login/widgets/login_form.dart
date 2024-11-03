import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shopping/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:online_shopping/features/authentication/screens/signup/signup.dart';
import 'package:online_shopping/navigation_menu.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/constants/text_strings.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: TTexts.email,
              ),
            ),
            const SizedBox(
              height: TSizes.md,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: TTexts.password,
                suffixIcon: Icon(Icons.visibility_off),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      activeColor:
                          isDark ? TColors.buttonPrimary : Colors.black,
                      value: true,
                      onChanged: (value) {},
                    ),
                    Text(
                      TTexts.rememberMe,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Get.to(const ForgetPasswordScreen());
                  },
                  child: const Text(TTexts.forgetPassword),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.offAll(const NavigationMenu());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: isDark
                      ? TColors.buttonPrimary
                      : Colors.black, // Button background color
                ),
                child: const Text(TTexts.signIn,
                    style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
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
                  Get.to(const SignUpScreen());
                },
                child: const Text(TTexts.createAccount,
                    style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),
          ],
        ),
      ),
    );
  }
}
