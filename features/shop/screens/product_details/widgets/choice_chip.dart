import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key,
    required this.selected,
    this.onSelected,
    required this.text,
  });

  final bool selected;
  final Function(bool)? onSelected;
  final String text;

  @override
  Widget build(BuildContext context) {
    final isColor = THelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        labelStyle: TextStyle(color: selected ? TColors.white : null),
        selected: selected,
        onSelected: onSelected,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        padding: isColor ? const EdgeInsets.all(0) : null,
        avatar: isColor
            ? TCircularContainer(
                width: 53,
                height: 60,
                backgroundColor: THelperFunctions.getColor(text)!)
            : null,
        shape: isColor
            ? const CircleBorder(
                side: BorderSide(
                color: Colors.transparent,
              ))
            : null,
      ),
    );
  }
}
