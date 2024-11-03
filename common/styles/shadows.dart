import 'package:flutter/material.dart';
import 'package:online_shopping/utils/constants/colors.dart';

class TShadowStyle {
  static final veticalProductShadow = BoxShadow(
    color: TColors.grey.withOpacity(0.1),
    spreadRadius: 7,
    blurRadius: 70,
    offset: const Offset(0, 2),
  );

  static final horizintalProductShadow = BoxShadow(
    color: TColors.grey.withOpacity(0.1),
    spreadRadius: 7,
    blurRadius: 70,
    offset: const Offset(0, 2),
  );
}
