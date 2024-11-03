import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shopping/common/widgets/appbar/app_bar.dart';
import 'package:online_shopping/common/widgets/appbar/tab_bar.dart';
import 'package:online_shopping/common/widgets/brands/brand_card.dart';
import 'package:online_shopping/common/widgets/custom_shapes/container/search_container.dart';
import 'package:online_shopping/common/widgets/layout/gird_layout.dart';
import 'package:online_shopping/common/widgets/products/cart/cart_icon.dart';
import 'package:online_shopping/common/widgets/texts/section_heading.dart';
import 'package:online_shopping/features/personalization/screens/brands/brands.dart';
import 'package:online_shopping/features/shop/screens/store/widgets/category_tab.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/image_strings.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: TAppBar(
          titleText: const Text("Store"),
          actions: [
            TCartCounterIcon(
                onPressed: () {},
                iconColor: isDark ? Colors.white : Colors.black)
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: isDark ? TColors.black : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.only(top: TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      TSearchContainer(
                        iconColor: isDark ? Colors.white : Colors.black,
                        borderColor: isDark ? Colors.white : Colors.black,
                        title: "What are you looking for?",
                        textColor: isDark ? Colors.white : Colors.black,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      TSectionHeadingTitle(
                        title: "Brands",
                        showActionButton: true,
                        titleColor: isDark ? Colors.white : Colors.black,
                        onPressed: () {
                          Get.to(const BrandsScreen());
                        },
                      ),
                      TGridLayout(
                        itemBuilder: (context, index) {
                          return TBrandCard(
                            brandTitle: "Nike",
                            brandImageIcon: isDark
                                ? TImages.nikeLogoDark
                                : TImages.nikeLogo,
                          );
                        },
                        itemCount: 4,
                        mainAxisExtent: 70,
                        mainAxisSpacing: 0,
                        crossAxisSpacing: 5,
                      ),
                    ],
                  ),
                ),
                bottom: const TTabBar(
                  tabs: [
                    Tab(child: Text("Clothing")),
                    Tab(child: Text("Shoes")),
                    Tab(child: Text("Sports")),
                    Tab(child: Text("Accessories")),
                    Tab(child: Text("Beauty")),
                    Tab(child: Text("Sale %"))
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
