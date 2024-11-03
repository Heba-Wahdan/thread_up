import 'package:flutter/material.dart';

class TSettingsMenuTile extends StatelessWidget {
  const TSettingsMenuTile({
    super.key,
    required this.title,
    required this.leadingIcon,
    this.trailing,
    this.onTap,
  });
  final String title;
  final IconData leadingIcon;
  final Widget? trailing;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(leadingIcon),
      title: Text(title),
      trailing: trailing,
    );
  }
}
