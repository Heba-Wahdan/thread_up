import 'package:flutter/material.dart';
import 'package:online_shopping/utils/constants/sizes.dart';

class TGridLayout extends StatelessWidget {
  const TGridLayout({
    super.key,
    required this.itemBuilder,
    required this.itemCount,
    required this.mainAxisExtent,
    this.mainAxisSpacing = TSizes.gridViewSpacing,
    this.crossAxisSpacing = TSizes.gridViewSpacing,
    this.padding = const EdgeInsets.all(8),
  });

  final Widget Function(BuildContext, int) itemBuilder;
  final int itemCount;
  final double mainAxisExtent;
  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: padding,
        itemCount: itemCount,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: mainAxisSpacing,
            crossAxisSpacing: crossAxisSpacing,
            mainAxisExtent: mainAxisExtent),
        itemBuilder: itemBuilder);
  }
}
