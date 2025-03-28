import 'package:flutter/material.dart';
import 'package:online_shopping/features/shop/screens/product%20reviews/widgets/rating_progress_indicator.dart';

class TOverallProductRating extends StatelessWidget {
  const TOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            "4.6",
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              TRatingProgressIndicator(text: "5", value: 0.8),
              TRatingProgressIndicator(text: "4", value: 0.5),
              TRatingProgressIndicator(text: "3", value: 0.3),
              TRatingProgressIndicator(text: "2", value: 0.2),
              TRatingProgressIndicator(text: "1", value: 0.1)
            ],
          ),
        )
      ],
    );
  }
}
