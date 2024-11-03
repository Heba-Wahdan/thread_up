import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shopping/common/widgets/appbar/app_bar.dart';
import 'package:online_shopping/common/widgets/custom_shapes/container/header_container.dart';
import 'package:online_shopping/common/widgets/texts/section_heading.dart';
import 'package:online_shopping/features/personalization/screens/address/address.dart';
import 'package:online_shopping/features/personalization/screens/profile/profile.dart';
import 'package:online_shopping/features/personalization/screens/settings/widgets/settings_menu_tile.dart';
import 'package:online_shopping/features/personalization/screens/settings/widgets/user_profile_tile.dart';
import 'package:online_shopping/features/shop/screens/cart/cart.dart';
import 'package:online_shopping/features/shop/screens/order/order.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            THeaderContainer(
              height: 220,
              child: Column(
                children: [
                  TAppBar(
                    titleText: Text(
                      "Account",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .apply(color: Colors.white),
                    ),
                  ),
                  TUserProfileTile(onPressed: () {
                    Get.to(const ProfileScreen());
                  })
                ],
              ),
            ),
            TSectionHeadingTitle(
              titleColor: isDark ? Colors.white : Colors.black,
              title: "Account Settings",
              showActionButton: false,
            ),
            TSettingsMenuTile(
              onTap: () {
                Get.to(const UserAddressScreen());
              },
              title: "My Addresses",
              leadingIcon: Icons.home,
            ),
            TSettingsMenuTile(
              onTap: () {
                Get.to(const CartScreen());
              },
              title: "My Cart",
              leadingIcon: Icons.shopping_cart,
            ),
            TSettingsMenuTile(
              onTap: () {
                Get.to(const OderScreen());
              },
              title: "My Orders",
              leadingIcon: Icons.inventory,
            ),
            const TSettingsMenuTile(
              title: "Bank Account",
              leadingIcon: Icons.account_balance,
            ),
            const TSettingsMenuTile(
              title: "My Coupons",
              leadingIcon: Icons.local_offer,
            ),
            const TSettingsMenuTile(
              title: "Notifications",
              leadingIcon: Icons.notifications,
            ),
            const TSettingsMenuTile(
              title: "Account Privacy",
              leadingIcon: Icons.privacy_tip,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            TSectionHeadingTitle(
                titleColor: isDark ? Colors.white : Colors.black,
                title: "App Settings",
                showActionButton: false),
            const TSettingsMenuTile(
              title: "Local Data",
              leadingIcon: Icons.save,
            ),
            TSettingsMenuTile(
              title: "Country",
              leadingIcon: Icons.public,
              trailing: Switch(value: false, onChanged: (value) {}),
            ),
            TSettingsMenuTile(
              title: "Safe Mode",
              leadingIcon: Icons.security,
              trailing: Switch(value: false, onChanged: (value) {}),
            ),
            TSettingsMenuTile(
              title: "HD Image Quality",
              leadingIcon: Icons.hd,
              trailing: Switch(value: false, onChanged: (value) {}),
            ),
          ],
        ),
      ),
    );
  }
}
