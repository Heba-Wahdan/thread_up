import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/appbar/app_bar.dart';
import 'package:online_shopping/common/widgets/products/sortable/sortable_products.dart';
import 'package:online_shopping/utils/constants/sizes.dart';

class BrandProductsScreen extends StatelessWidget {
  const BrandProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(
        titleText: Text("Nike"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace / 2),
          child: Column(
            children: [TSortableProducts()],
          ),
        ),
      ),
    );
  }
}
