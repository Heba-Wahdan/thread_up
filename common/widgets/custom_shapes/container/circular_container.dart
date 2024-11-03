import 'package:flutter/material.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/sizes.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.height,
    this.width,
    this.padding,
    this.child,
    this.margin,
    this.backgroundColor = TColors.white,
    this.radius = TSizes.md,
    this.borderColor = TColors.borderPrimary,
    this.showBorder = false,
  });

  final double? height;
  final double? width;
  final double radius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsets? margin;
  final Color backgroundColor;
  final Widget? child;
  final Color borderColor;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: backgroundColor,
          border: showBorder ? Border.all(color: borderColor) : null),
      child: child,
    );
  }
}
