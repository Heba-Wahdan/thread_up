import 'package:flutter/material.dart';

class TRating extends StatelessWidget {
  const TRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        Text.rich(TextSpan(
            children: [TextSpan(text: "4.9"), TextSpan(text: "(146)")]))
      ],
    );
  }
}
