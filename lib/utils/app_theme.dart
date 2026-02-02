import 'package:flutter/material.dart';
import 'package:coding_challenge_eigital/utils/utils.dart';

ThemeData get lightTheme {
  return ThemeData(
    primaryColor: AppColor.primary,
    scaffoldBackgroundColor: AppColor.bgColor,
    useMaterial3: true,
    fontFamily: FontFamily.montserrat,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColor.primary,
      selectionColor: AppColor.primary.withValues(alpha: .35),
      selectionHandleColor: AppColor.primary,
    ),
    dividerColor: AppColor.white3,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.white,
      surfaceTintColor: AppColor.white,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: AppColor.black,
        fontSize: 16,
        fontWeight: FontWeight.w600,
        fontFamily: FontFamily.montserrat,
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        return states.contains(WidgetState.selected)
            ? AppColor.primary
            : AppColor.white;
      }),
      checkColor: const WidgetStatePropertyAll(AppColor.white),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColor.grey4,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: AppColor.white3),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: AppColor.white3),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: AppColor.white3),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: AppColor.primary),
      ),
    ),
  );
}
