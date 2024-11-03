import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/device/device_utility.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar(
      {super.key,
      this.titleText,
      this.leadingIcon,
      this.showBackArrow = false,
      this.actions,
      this.onPressedLeading});

  final Widget? titleText;
  final IconData? leadingIcon;
  final bool showBackArrow;
  final List<Widget>? actions;
  final Function? onPressedLeading;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      child: AppBar(
        actions: actions,
        title: titleText,
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: isDark ? Colors.white : Colors.black,
                ))
            : leadingIcon != null
                ? IconButton(
                    onPressed: () {
                      onPressedLeading;
                    },
                    icon: Icon(leadingIcon))
                : null, // If no leadingIcon or back arrow, don't show leading
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
