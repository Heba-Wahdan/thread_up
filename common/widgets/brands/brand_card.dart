import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    required this.brandTitle,
    required this.brandImageIcon,
    this.showBorder = true,
    this.onTap,
  });
  final String brandTitle;
  final String brandImageIcon;
  final bool showBorder;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TCircularContainer(
          borderColor: isDark ? Colors.white : Colors.black,
          showBorder: showBorder,
          backgroundColor: Colors.transparent,
          child: Row(
            children: [
              SizedBox(
                height: 56,
                width: 56,
                child: Image.asset(brandImageIcon),
              ),
              // ignore: prefer_const_constructors
              Text(brandTitle)
            ],
          ),
        ),
      ),
    );
  }
}
