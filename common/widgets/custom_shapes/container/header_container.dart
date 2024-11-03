import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:online_shopping/common/widgets/custom_shapes/curved_edges/clipper_curve_widget.dart';
import 'package:online_shopping/utils/constants/colors.dart';

class THeaderContainer extends StatelessWidget {
  const THeaderContainer({
    super.key,
    required this.child,
    this.height,
  });
  final Widget child;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return TClipperCurveWidget(
      child: Container(
        color: TColors.black,
        child: SizedBox(
          height: height,
          child: Stack(
            children: [
              Positioned(
                top: -250,
                right: -150,
                child: TCircularContainer(
                  height: 400,
                  width: 400,
                  radius: 400,
                  backgroundColor: TColors.white.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: TCircularContainer(
                    height: 400,
                    width: 400,
                    radius: 400,
                    backgroundColor: TColors.white.withOpacity(0.1)),
              ),
              child
            ],
          ),
        ),
      ),
    );
  }
}
