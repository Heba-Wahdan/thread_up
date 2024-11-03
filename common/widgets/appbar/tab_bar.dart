import 'package:flutter/material.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/device/device_utility.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TTabBar({
    super.key,
    required this.tabs,
  });
  final List<Tab> tabs;
  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    //if I want to add background color to the tabs I have to wrap it with Material Widget, So I need PreferredSizeWidget
    return Material(
      color: isDark ? TColors.black : TColors.white,
      child: TabBar(
          isScrollable: true,
          indicatorColor: TColors.darkerGrey,
          unselectedLabelColor: TColors.darkGrey, //unselected
          labelColor: isDark ? Colors.white : Colors.black, //selected
          tabs: tabs),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
