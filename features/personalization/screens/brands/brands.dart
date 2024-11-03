import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shopping/common/widgets/appbar/app_bar.dart';
import 'package:online_shopping/common/widgets/brands/brand_card.dart';
import 'package:online_shopping/common/widgets/layout/gird_layout.dart';
import 'package:online_shopping/common/widgets/texts/section_heading.dart';
import 'package:online_shopping/features/personalization/screens/brands/brand_products.dart';
import 'package:online_shopping/utils/constants/image_strings.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class BrandsScreen extends StatelessWidget {
  const BrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: const TAppBar(
        titleText: Text("Brands"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TSectionHeadingTitle(
                title: "Brands",
                showActionButton: false,
                titleColor: isDark ? Colors.white : Colors.black,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TGridLayout(
                itemBuilder: (_, index) {
                  return TBrandCard(
                      onTap: () {
                        Get.to(const BrandProductsScreen());
                      },
                      brandTitle: "Nike",
                      brandImageIcon: TImages.nikeLogo);
                },
                itemCount: 10,
                mainAxisExtent: 70,
                padding: null,
              )
            ],
          ),
        ),
      ),
    );
  }
}
