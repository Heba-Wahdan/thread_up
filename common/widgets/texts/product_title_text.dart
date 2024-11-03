import 'package:flutter/material.dart';

class TProductTitleText extends StatelessWidget {
  const TProductTitleText(
      {super.key,
      required this.title,
      required this.smallStyle,
      this.textAlign});

  final String title;
  final bool smallStyle;
  final TextAlign? textAlign;
  final int maxLines = 2;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      style: smallStyle
          ? Theme.of(context).textTheme.labelLarge
          : Theme.of(context).textTheme.titleSmall,
    );
  }
}
