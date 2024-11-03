import 'package:flutter/material.dart';

class TIconContainer extends StatelessWidget {
  const TIconContainer({
    super.key,
    required this.icon,
    this.size,
    this.width,
    this.height,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final IconData icon;
  final double? size, width, height;
  final Color? color;
  final Color? backgroundColor;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100), color: backgroundColor),
      child: IconButton(
          onPressed: () {
            onPressed;
          },
          icon: Icon(
            icon,
            size: size,
            color: color,
          )),
    );
  }
}
