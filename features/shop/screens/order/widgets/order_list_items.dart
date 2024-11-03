import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class TOderListItems extends StatelessWidget {
  const TOderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return ListView.separated(
        shrinkWrap: true,
        itemCount: 1,
        separatorBuilder: (_, __) {
          return const SizedBox(
            height: TSizes.spaceBtwItems,
          );
        },
        itemBuilder: (_, index) {
          return TCircularContainer(
            showBorder: true,
            backgroundColor: isDark ? TColors.dark : TColors.light,
            child: Padding(
              padding: const EdgeInsets.all(TSizes.md),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.local_shipping),
                      const SizedBox(
                        width: TSizes.spaceBtwItems / 2,
                      ),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text("Processng"), Text("01 Sep 2024")],
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.keyboard_arrow_right))
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  const Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Icon(Icons.sell),
                            SizedBox(
                              width: TSizes.spaceBtwItems / 2,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [Text("Order"), Text("09 Sep 2024")],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Icon(Icons.calendar_month),
                            SizedBox(
                              width: TSizes.spaceBtwItems / 2,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Shipping Date"),
                                  Text("09 Sep 2024")
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
