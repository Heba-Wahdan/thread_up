// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class TFormDivider extends StatelessWidget {
  const TFormDivider({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            thickness: 0.5,
            color: isDark ? TColors.darkGrey : TColors.grey,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Expanded(
          child: Divider(
            thickness: 0.5,
            color: isDark ? TColors.darkGrey : TColors.grey,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
