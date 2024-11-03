import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/images/rounded_images.dart';
import 'package:online_shopping/common/widgets/texts/product_title_text.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/image_strings.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Row(
      children: [
        TRoundedImage(
          imageUrl: TImages.product1,
          height: 60,
          width: 60,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: isDark ? TColors.darkGrey : TColors.light,
        ),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Nike", style: Theme.of(context).textTheme.labelSmall),
              const Flexible(
                child:
                    TProductTitleText(title: "Nike Shoes", smallStyle: false),
              ),
              Text.rich(
                TextSpan(children: [
                  TextSpan(
                      text: "Color: ",
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: "Green ",
                      style: Theme.of(context).textTheme.bodyLarge),
                  TextSpan(
                      text: " Size: ",
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: "EU 38",
                      style: Theme.of(context).textTheme.bodyLarge)
                ]),
              )
            ],
          ),
        )
      ],
    );
  }
}
