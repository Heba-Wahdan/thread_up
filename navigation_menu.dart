import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shopping/features/personalization/screens/settings/settings.dart';
import 'package:online_shopping/features/shop/screens/home/home.dart';
import 'package:online_shopping/features/shop/screens/store/store.dart';
import 'package:online_shopping/features/shop/screens/wishlist/wishlist.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigatorController());
    final isDark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          height: 60,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) {
            controller.selectedIndex.value = index;
          },
          backgroundColor: isDark ? TColors.black : TColors.black,
          indicatorColor: isDark
              ? TColors.white.withOpacity(0.1)
              : TColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(
                icon: Icon(
                  Icons.house,
                  color: TColors.white,
                ),
                label: "Home"),
            NavigationDestination(
                icon: Icon(
                  Icons.shopping_bag,
                  color: TColors.white,
                ),
                label: "Shop"),
            NavigationDestination(
                icon: Icon(
                  Icons.favorite,
                  color: TColors.white,
                ),
                label: "Favorite"),
            NavigationDestination(
                icon: Icon(
                  Icons.person,
                  color: TColors.white,
                ),
                label: "Profile"),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigatorController extends GetxController {
  RxInt selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const WishlistScreen(),
    const SettingsScreen()
  ];
}
