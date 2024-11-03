import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/texts/section_heading.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeadingTitle(
          showActionButton: true,
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {},
          titleColor: isDark ? TColors.white : Colors.black,
          padding: 0,
        ),
        Text(
          'Heba Elbastawisy',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text(
              '+92-317-8059525',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ), // Row
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: TSizes.spaceBtwItems),
            Expanded(
              child: Text(
                'South Liana, Maine 87695, USA',
                style: Theme.of(context).textTheme.bodyMedium,
                softWrap: true,
              ),
            ),
          ],
        ), // Row
      ],
    );
  }
}

class TSectionHeading {}
