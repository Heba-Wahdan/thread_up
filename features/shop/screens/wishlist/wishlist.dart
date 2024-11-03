import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shopping/common/widgets/appbar/app_bar.dart';
import 'package:online_shopping/common/widgets/layout/gird_layout.dart';
import 'package:online_shopping/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:online_shopping/features/shop/screens/home/home.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        titleText: const Text("Wishlist"),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(const HomeScreen());
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: SingleChildScrollView(
        child: TGridLayout(
            itemBuilder: (_, index) {
              return const TProductCardVertical();
            },
            itemCount: 8,
            mainAxisExtent: 275),
      ),
    );
  }
}
