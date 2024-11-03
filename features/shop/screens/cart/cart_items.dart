import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/products/cart/add_remove_quantity.dart';
import 'package:online_shopping/common/widgets/products/cart/cart_item.dart';
import 'package:online_shopping/common/widgets/texts/product_price_text.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    this.showAddRemoveButton = true,
  });
  final bool showAddRemoveButton;
  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) {
        return const SizedBox(
          height: TSizes.spaceBtwSections,
        );
      },
      itemCount: 1,
      itemBuilder: (_, index) {
        return Column(
          children: [
            const TCartItem(),
            if (showAddRemoveButton)
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
            if (showAddRemoveButton)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      SizedBox(
                        width: 75,
                      ),
                      TAddRemoveQuantityButtons(),
                    ],
                  ),
                  TProductPriceText(
                      sign: "€",
                      price: "256",
                      color: isDark ? TColors.white : TColors.black,
                      isSmall: false)
                ],
              )
          ],
        );
      },
    );
  }
}
