import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/appbar/app_bar.dart';
import 'package:online_shopping/common/widgets/images/rounded_images.dart';
import 'package:online_shopping/common/widgets/texts/section_heading.dart';
import 'package:online_shopping/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:online_shopping/utils/constants/image_strings.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        titleText: Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TRoundedImage(
                      imageUrl: TImages.user,
                      height: 50,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Change Profile Picture",
                        style: TextStyle(
                          color: isDark ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TSectionHeadingTitle(
                  titleColor: isDark ? Colors.white : Colors.black,
                  padding: 0,
                  title: "Profile Information",
                  showActionButton: false),
              TProfileMenu(
                title: "Name",
                value: "Heba Elbastawisy",
                onPressed: () {},
              ),
              TProfileMenu(
                title: "Username",
                value: "heba_Wahdan",
                onPressed: () {},
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const Divider(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TSectionHeadingTitle(
                  padding: 0,
                  title: "Personal Information",
                  titleColor: isDark ? Colors.white : Colors.black,
                  showActionButton: false),
              TProfileMenu(
                title: "User ID",
                value: "87654",
                icon: Icons.copy,
                onPressed: () {},
              ),
              TProfileMenu(
                title: "Email",
                value: "elbastawisyheba@gmail.com",
                onPressed: () {},
              ),
              TProfileMenu(
                title: "Phone Number",
                value: "015227654340",
                onPressed: () {},
              ),
              TProfileMenu(
                title: "Gender",
                value: "Female",
                onPressed: () {},
              ),
              TProfileMenu(
                title: "Date of birth",
                value: "23.05.2003",
                onPressed: () {},
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Delete Account",
                    style: TextStyle(color: Colors.red),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
