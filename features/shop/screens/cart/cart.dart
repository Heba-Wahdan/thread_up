import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shopping/common/widgets/appbar/app_bar.dart';
import 'package:online_shopping/features/shop/screens/cart/cart_items.dart';
import 'package:online_shopping/features/shop/screens/checkout/checkout.dart';
import 'package:online_shopping/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        titleText: Text("Cart"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: TCartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {
            Get.to(const CheckoutScreen());
          },
          style:
              ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(65)),
          child: const Text("Checkout €256"),
        ),
      ),
    );
  }
}
