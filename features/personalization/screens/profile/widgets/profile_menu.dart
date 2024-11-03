import 'package:flutter/material.dart';

class TProfileMenu extends StatelessWidget {
  const TProfileMenu({
    super.key,
    required this.title,
    required this.value,
    this.icon = Icons.keyboard_arrow_right,
    required this.onPressed,
  });
  final String title;
  final String value;
  final IconData icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        Expanded(
          flex: 5,
          child: Text(
            value,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Expanded(
          child: IconButton(onPressed: onPressed, icon: Icon(icon)),
        )
      ],
    );
  }
}
