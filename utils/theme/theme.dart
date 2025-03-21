import 'package:flutter/material.dart';
import 'package:online_shopping/utils/theme/custom_themes/appbar_theme.dart';
import 'package:online_shopping/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:online_shopping/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:online_shopping/utils/theme/custom_themes/chip_theme.dart';
import 'package:online_shopping/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:online_shopping/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:online_shopping/utils/theme/custom_themes/text_field_theme.dart';
import 'package:online_shopping/utils/theme/custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: "Helvetica", // Changed to Helvetica
      brightness: Brightness.light,
      primaryColor: Colors.black,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TTextTheme.lightTextTheme,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
      appBarTheme: TAppBarTheme.LightAppBarTheme,
      checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
      bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
      chipTheme: TChipTheme.lightChipTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme);

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: "Helvetica", // Changed to Helvetica
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TTextTheme.darkTextTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
      bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
      chipTheme: TChipTheme.darkChipTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme);
}
