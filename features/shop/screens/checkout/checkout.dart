import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shopping/common/widgets/appbar/app_bar.dart';
import 'package:online_shopping/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:online_shopping/common/widgets/products/cart/coupon_widget.dart';
import 'package:online_shopping/common/widgets/success_screen/success.dart';
import 'package:online_shopping/features/shop/screens/cart/cart_items.dart';
import 'package:online_shopping/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:online_shopping/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:online_shopping/features/shop/screens/checkout/widgets/billing_paying_section.dart';
import 'package:online_shopping/navigation_menu.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/image_strings.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: const TAppBar(
        titleText: Text("Order Review"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TCartItems(
                showAddRemoveButton: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              const TCouponCode(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              TCircularContainer(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                showBorder: true,
                backgroundColor: isDark ? TColors.dark : TColors.white,
                child: const Column(
                  children: [
                    //Pricing
                    TSBillingAmountSection(),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),

                    //Divider
                    Divider(),
                    SizedBox(
                      height: TSizes.spaceBtwItems / 2,
                    ),

                    //Payment Method
                    TBillingPayingSection(),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),

                    //Address
                    TBillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {
            Get.to(SuccessScreen(
              image: isDark
                  ? TImages.successfulImageDark
                  : TImages.successfulImage,
              title: "Payment Success",
              subtitle: "Your item will be shipped soon!",
              onPressed: () {
                Get.offAll(const NavigationMenu());
              },
            ));
          },
          style:
              ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(65)),
          child: const Text("Checkout €256"),
        ),
      ),
    );
  }
}
