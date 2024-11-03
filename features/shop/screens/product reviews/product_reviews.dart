import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/appbar/app_bar.dart';
import 'package:online_shopping/common/widgets/products/ratings/rating_bar_indicator.dart';
import 'package:online_shopping/features/shop/screens/product%20reviews/widgets/overall_product_rating.dart';
import 'package:online_shopping/features/shop/screens/product%20reviews/widgets/user_review_card.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/constants/text_strings.dart';

class ProductReviews extends StatelessWidget {
  const ProductReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        titleText: Text(
          "Reviews and Rating",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(TTexts.reviewsAndRatingScreenTitle),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const TOverallProductRating(),
              const TRatingBarIndicator(
                rating: 3.6,
              ),
              Text(
                "12,586",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const TUserReviewCard(),
              const TUserReviewCard(),
              const TUserReviewCard(),
              const TUserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
