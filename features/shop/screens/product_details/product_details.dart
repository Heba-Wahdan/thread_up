import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/custom_shapes/curved_edges/clipper_curve_widget.dart';
import 'package:online_shopping/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:online_shopping/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:online_shopping/features/shop/screens/product_details/widgets/image_product_stack.dart';
import 'package:online_shopping/features/shop/screens/product_details/widgets/product_data.dart';
import 'package:online_shopping/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TClipperCurveWidget(
              child: Container(
                color: isDark ? TColors.dark : TColors.light,
                height: 400,
                child: const Column(
                  children: [
                    TImageProductStack(),
                    TProductImageSlider(),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  ProductData(),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TProductAttributes()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
