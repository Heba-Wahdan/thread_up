import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shopping/common/widgets/custom_shapes/container/category_container.dart';
import 'package:online_shopping/features/shop/screens/sub_categpries/sub_categories.dart';

class THomeListCategories extends StatelessWidget {
  const THomeListCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return TCategoryContainer(
            title: "Category",
            onTap: () {
              Get.to(const SubCategoriesScreen());
            },
          );
        },
      ),
    );
  }
}
