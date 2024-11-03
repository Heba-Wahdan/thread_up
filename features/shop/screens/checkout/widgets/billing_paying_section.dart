import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:online_shopping/common/widgets/texts/section_heading.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/image_strings.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class TBillingPayingSection extends StatelessWidget {
  const TBillingPayingSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Column(
      children: [
        TSectionHeadingTitle(
          titleColor: isDark ? TColors.white : Colors.black,
          title: "Payment Method",
          showActionButton: true,
          buttonTitle: "Change",
          onPressed: () {},
          padding: 0,
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            TCircularContainer(
              width: 60,
              height: 35,
              backgroundColor: isDark ? TColors.light : TColors.white,
              padding: const EdgeInsets.all(TSizes.sm),
              child: Image.asset(
                TImages.payPal,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems / 2,
            ),
            Text("Paypal", style: Theme.of(context).textTheme.bodyLarge)
          ],
        )
      ],
    );
  }
}
