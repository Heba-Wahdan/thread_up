import 'package:flutter/material.dart';
import 'package:online_shopping/utils/constants/sizes.dart';

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    this.height,
    this.width,
    this.borderRadius = TSizes.md,
    required this.imageUrl,
    this.padding,
    this.backgroundColor = Colors.transparent,
    this.fit = BoxFit.contain,
    this.border,
    this.onTap,
    this.applyImageRadius = true,
    this.isNetworkImage = false,
  });
  final double? height, width;
  final double borderRadius;
  final String imageUrl;
  final EdgeInsetsGeometry? padding;
  final Color backgroundColor;
  final BoxFit? fit;
  final BoxBorder? border;
  final Function()? onTap;
  final bool applyImageRadius;
  final bool isNetworkImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: border,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            image:
                isNetworkImage ? NetworkImage(imageUrl) : AssetImage(imageUrl),
            fit: fit,
          ),
        ),
      ),
    );
  }
}
