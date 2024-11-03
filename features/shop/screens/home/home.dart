// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shopping/common/widgets/layout/gird_layout.dart';
import 'package:online_shopping/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:online_shopping/common/widgets/texts/section_heading.dart';
import 'package:online_shopping/common/widgets/custom_shapes/container/header_container.dart';
import 'package:online_shopping/common/widgets/custom_shapes/container/search_container.dart';
import 'package:online_shopping/features/shop/screens/trending/trending_products.dart';
import 'package:online_shopping/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:online_shopping/features/shop/screens/home/widgets/home_categories.dart';
import 'package:online_shopping/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/image_strings.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const THeaderContainer(
              height: 335,
              child: Column(
                children: [
                  //AppBar
                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  //SearchBar
                  TSearchContainer(
                    title: "What are you looking for?",
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  //categories
                  TSectionHeadingTitle(
                    title: "Explore more:",
                    showActionButton: false,
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  THomeListCategories()
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: TCarouselSlider(
                banners: [
                  TImages.banner1,
                  TImages.banner5,
                  TImages.banner2,
                  TImages.banner3,
                  TImages.banner4
                ],
              ),
            ),
            TSectionHeadingTitle(
              title: "Trending",
              showActionButton: true,
              titleColor: isDark ? TColors.white : Colors.black,
              onPressed: () {
                Get.to(const TrendingProductsScreen());
              },
            ),
            TGridLayout(
              itemBuilder: (_, index) {
                return const TProductCardVertical();
              },
              itemCount: 6,
              mainAxisExtent: 275,
            ),
          ],
        ),
      ),
    );
  }
}
