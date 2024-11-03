import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shopping/common/styles/shadows.dart';
import 'package:online_shopping/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:online_shopping/common/widgets/icon/icon_container.dart';
import 'package:online_shopping/common/widgets/images/rounded_images.dart';
import 'package:online_shopping/common/widgets/texts/product_price_text.dart';
import 'package:online_shopping/common/widgets/texts/product_title_text.dart';
import 'package:online_shopping/features/shop/screens/product_details/product_details.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/image_strings.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {
        Get.to(const ProductDetailsScreen());
      },
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [TShadowStyle.veticalProductShadow],
            color: isDark ? TColors.darkerGrey : TColors.white,
            borderRadius: BorderRadius.circular(TSizes.productImageRadius)),
        child: Column(
          children: [
            TCircularContainer(
              padding: const EdgeInsets.all(TSizes.sm),
              height: 180,
              width: 180,
              backgroundColor: isDark ? TColors.dark : TColors.light,
              child: const Stack(
                children: [
                  Center(
                    child: TRoundedImage(
                      imageUrl: TImages.product1,
                    ),
                  ),
                  Positioned(
                    right: -5,
                    top: -10,
                    child: TIconContainer(
                      icon: Icons.favorite,
                      color: Color.fromARGB(255, 218, 66, 58),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TProductTitleText(
                      title: "Grey Hoodie", smallStyle: true),
                  Row(
                    children: [
                      Text(
                        "Nike",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.verified,
                        size: TSizes.iconXs,
                        color: TColors.primary,
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                left: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TProductPriceText(
                      isSmall: false,
                      sign: "€",
                      price: "19.99",
                      color: isDark
                          ? Colors.red
                          : const Color.fromARGB(255, 199, 42, 32)),
                ],
              ),
            ),
            SizedBox(
              height: 22,
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  children: [
                    TProductPriceText(
                      isSmall: true,
                      sign: "€",
                      color: isDark ? Colors.white : Colors.black,
                      price: "29",
                      lineThrough: true,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    TProductPriceText(
                      isSmall: true,
                      sign: "%",
                      price: "-25",
                      color: isDark
                          ? Colors.red
                          : const Color.fromARGB(255, 204, 57, 49),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: TColors.dark,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(
                            TSizes.cardRadiusMd,
                          ),
                          topLeft: Radius.circular(
                            TSizes.cardRadiusMd,
                          ),
                        ),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
