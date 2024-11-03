import 'package:flutter/material.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class TSectionHeadingTitle extends StatelessWidget {
  const TSectionHeadingTitle(
      {super.key,
      required this.title,
      this.buttonTitle = "View all",
      this.onPressed,
      required this.showActionButton,
      this.titleColor = Colors.white,
      this.padding = TSizes.defaultSpace});
  final String title;
  final String buttonTitle;
  final Function()? onPressed;
  final bool showActionButton;
  final Color titleColor;
  final double padding;
  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: EdgeInsets.only(left: padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: titleColor),
          ),
          if (showActionButton)
            TextButton(
                onPressed: onPressed,
                child: Row(
                  children: [
                    Text(
                      buttonTitle,
                      style: TextStyle(
                          color: isDark ? Colors.white : Colors.black),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: isDark ? Colors.white : Colors.black,
                    )
                  ],
                )),
        ],
      ),
    );
  }
}
