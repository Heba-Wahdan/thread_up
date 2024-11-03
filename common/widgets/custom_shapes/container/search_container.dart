import 'package:flutter/material.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/device/device_utility.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    required this.title,
    this.showBackground = false,
    this.showBorder = true,
    this.icon = Icons.search,
    this.onTap,
    this.borderColor = Colors.white,
    this.textColor = Colors.white,
    this.iconColor = Colors.white,
  });
  final String title;
  final IconData icon;
  final bool showBackground, showBorder;
  final Function()? onTap;
  final Color borderColor;
  final Color? textColor;
  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
        child: Container(
            width: TDeviceUtils.getScreenWidth(context),
            padding: const EdgeInsets.all(TSizes.sm),
            decoration: BoxDecoration(
                color: showBackground ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
                border: showBorder ? Border.all(color: borderColor) : null),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: iconColor,
                ),
                const SizedBox(
                  width: TSizes.spaceBtwItems,
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: textColor,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
