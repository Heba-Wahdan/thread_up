import 'package:flutter/material.dart';

class TProductPriceText extends StatelessWidget {
  const TProductPriceText({
    super.key,
    required this.sign,
    required this.price,
    this.maxLines = 1,
    this.lineThrough = false,
    required this.color,
    required this.isSmall,
  });

  final String price;
  final String sign;
  final int maxLines;
  final bool lineThrough;
  final bool isSmall;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: maxLines,
      price + sign,
      style: isSmall
          ? Theme.of(context).textTheme.labelLarge!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null,
              color: color)
          : Theme.of(context).textTheme.titleMedium!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null,
              color: color),
    );
  }
}
