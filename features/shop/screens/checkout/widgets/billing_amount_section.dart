import 'package:flutter/material.dart';
import 'package:online_shopping/utils/constants/sizes.dart';

class TSBillingAmountSection extends StatelessWidget {
  const TSBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Subtotal", style: Theme.of(context).textTheme.bodyMedium),
            Text("€256", style: Theme.of(context).textTheme.labelLarge)
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Shipping Fee", style: Theme.of(context).textTheme.bodyMedium),
            Text("€4.99", style: Theme.of(context).textTheme.labelLarge)
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Tax Fee", style: Theme.of(context).textTheme.bodyMedium),
            Text("€6", style: Theme.of(context).textTheme.labelLarge)
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Order Total", style: Theme.of(context).textTheme.bodyMedium),
            Text("€266.99", style: Theme.of(context).textTheme.titleLarge)
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
      ],
    );
  }
}
