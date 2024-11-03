import 'package:flutter/material.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key,
    this.onPressed,
    required this.iconColor,
  });

  final Function()? onPressed;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Icons.shopping_cart,
            color: iconColor,
          ),
        ),
        Positioned(
          right: 3,
          bottom: 30,
          child: Container(
            height: 17,
            width: 17,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.redAccent),
            child: const Center(
              child: Text(
                "2",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12, // Adjust the font size if necessary
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
