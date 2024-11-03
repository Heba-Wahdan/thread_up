import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class TCouponCode extends StatelessWidget {
  const TCouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return TCircularContainer(
      showBorder: true,
      backgroundColor: isDark ? TColors.dark : TColors.white,
      padding: const EdgeInsets.only(
          top: TSizes.sm, bottom: TSizes.sm, right: TSizes.sm, left: TSizes.md),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              style: Theme.of(context).textTheme.bodyLarge,
              decoration: const InputDecoration(
                  hintText: "Promo Code",
                  border: InputBorder.none,
                  errorBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none),
            ),
          ),
          SizedBox(
              width: 80,
              child: ElevatedButton(onPressed: () {}, child: const Text("Apply")))
        ],
      ),
    );
  }
}
