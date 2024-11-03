import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/icon/icon_container.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class TAddRemoveQuantityButtons extends StatelessWidget {
  const TAddRemoveQuantityButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Row(
      children: [
        TIconContainer(
          backgroundColor: isDark ? TColors.darkerGrey : TColors.grey,
          icon: Icons.remove,
          size: TSizes.md,
          height: 32,
          width: 32,
          color: isDark ? TColors.white : TColors.black,
        ),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        const Text(" 1"),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        TIconContainer(
          icon: Icons.add,
          size: TSizes.md,
          height: 32,
          width: 32,
          color: TColors.white,
          backgroundColor: isDark ? TColors.primary : TColors.black,
        )
      ],
    );
  }
}
