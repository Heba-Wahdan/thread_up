import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/layout/gird_layout.dart';
import 'package:online_shopping/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Column(
      children: [
        DropdownButtonFormField(
          dropdownColor: isDark ? TColors.dark : Colors.white,
          decoration: InputDecoration(
              prefixIcon: const Icon(Icons.filter_list),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                      color: isDark ? TColors.darkerGrey : TColors.grey))),
          onChanged: (value) {},
          items: [
            "Name",
            "Higher Price",
            "Lower Price",
            "Sale",
            "Newest",
            "Popularity"
          ].map((filter) {
            return DropdownMenuItem(
              value: filter,
              child: Text(filter),
            );
          }).toList(),
        ),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),
        TGridLayout(
            itemBuilder: (_, index) {
              return const TProductCardVertical();
            },
            itemCount: 6,
            mainAxisExtent: 275)
      ],
    );
  }
}
