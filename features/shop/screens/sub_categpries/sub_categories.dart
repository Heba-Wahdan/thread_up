import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/appbar/app_bar.dart';
import 'package:online_shopping/common/widgets/products/sortable/sortable_products.dart';
import 'package:online_shopping/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(
        titleText: Text(
          "Shoes",
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace / 2),
          child: TSortableProducts(),
        ),
      ),
    );
  }
}
