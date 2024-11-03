import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shopping/common/widgets/images/rounded_images.dart';
import 'package:online_shopping/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:online_shopping/features/shop/controllers/home_controller.dart';
import 'package:online_shopping/utils/constants/sizes.dart';

class TCarouselSlider extends StatelessWidget {
  const TCarouselSlider({
    super.key,
    required this.banners,
  });
  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
            options: CarouselOptions(
              // autoPlay: true,
              viewportFraction: 0.9,
              onPageChanged: (index, _) {
                controller.updateIndicator(index);
              },
            ),
            items: banners
                .map((url) => TRoundedImage(
                      imageUrl: url,
                      fit: BoxFit.cover,
                      padding: const EdgeInsets.only(
                        left: 6,
                        right: 6,
                      ),
                    ))
                .toList()),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < banners.length; i++)
                  TCircularContainer(
                    height: 5,
                    width: 20,
                    margin: const EdgeInsets.only(left: 5),
                    backgroundColor: controller.currentIndex.value == i
                        ? Colors.black
                        : Colors.grey,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
