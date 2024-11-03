import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:online_shopping/common/widgets/images/rounded_images.dart';
import 'package:online_shopping/common/widgets/products/ratings/rating_bar_indicator.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/image_strings.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

class TUserReviewCard extends StatelessWidget {
  const TUserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                TRoundedImage(
                  imageUrl: TImages.user,
                  height: 40,
                  width: 40,
                  borderRadius: 100,
                  fit: BoxFit.contain,
                ),
                Text("Heba Elbastawisy"),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
        const Row(
          children: [
            TRatingBarIndicator(rating: 3.4),
            SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text("01 Nov, 2023 ")
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        const ReadMoreText(
            trimLines: 2,
            trimMode: TrimMode.Line,
            trimExpandedText: " show less",
            trimCollapsedText: " show more",
            "The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly.Great job!"),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        TCircularContainer(
          backgroundColor: isDark ? TColors.darkerGrey : TColors.grey,
          child: const Padding(
            padding: EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Online's Store"),
                    Text("01 Nov, 2023"),
                  ],
                ),
                SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                ReadMoreText(
                  "The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly without any issues. Great job on the user experience!",
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: " show less",
                  trimCollapsedText: " show more",
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
      ],
    );
  }
}
