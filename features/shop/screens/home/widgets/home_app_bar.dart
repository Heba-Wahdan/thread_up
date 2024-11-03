import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shopping/common/widgets/products/cart/cart_icon.dart';
import 'package:online_shopping/features/shop/screens/cart/cart.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/text_strings.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TTexts.homeAppbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .copyWith(color: Colors.white)),
          Text(TTexts.homeAppbarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.white)),
        ],
      ),
      actions: [
        TCartCounterIcon(
          onPressed: () {
            print("Pressed!"); // Debugging line
            Get.to(() => const CartScreen());
          },
          iconColor: TColors.white,
        )
      ],
    );
  }
}
