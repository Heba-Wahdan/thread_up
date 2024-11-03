import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/login_signup/form_divider.dart';
import 'package:online_shopping/common/widgets/login_signup/social_buttons.dart';
import 'package:online_shopping/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TTexts.signInTitle,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              const SignupForm(),
              const TFormDivider(text: TTexts.orSignInWith),
              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
