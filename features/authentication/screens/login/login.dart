// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:online_shopping/common/styles/spacing_styles.dart';
import 'package:online_shopping/common/widgets/login_signup/form_divider.dart';
import 'package:online_shopping/common/widgets/login_signup/social_buttons.dart';
import 'package:online_shopping/features/authentication/screens/login/widgets/login_form.dart';
import 'package:online_shopping/features/authentication/screens/login/widgets/login_header.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              LoginHeader(),
              LoginForm(),
              TFormDivider(
                text: TTexts.orSignInWith,
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
