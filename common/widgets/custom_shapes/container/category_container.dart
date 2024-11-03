import 'package:flutter/material.dart';

class TCategoryContainer extends StatelessWidget {
  const TCategoryContainer(
      {super.key,
      required this.title,
      this.backgroundColor = const Color.fromARGB(255, 58, 58, 60),
      this.textColor = Colors.white,
      this.onTap});

  final String title;
  final Color backgroundColor;
  final Color textColor;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Container(
          height: 17,
          decoration: BoxDecoration(
              color: backgroundColor, borderRadius: BorderRadius.circular(8)),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Text(
              title,
              style: TextStyle(color: textColor),
            ),
          )),
        ),
      ),
    );
  }
}
