import 'colors.dart';
import 'package:flutter/material.dart';
import '../../../../gen/fonts.gen.dart';

class AppTheme {
  ThemeData get lightTheme => ThemeData(
    primaryColor: AppColors.cyanBlueAzure,
    primarySwatch: AppColors.cyanBlueAzure,
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: _appBarTheme(),
    textTheme: _texttheme(),
    hoverColor: Colors.transparent,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
          return Colors.transparent;
        }),
      ),
    ),
    dividerColor: AppColors.quickSilver,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: AppColors.cyanBlueAzure,
    ).copyWith(onSecondary: AppColors.quickSilver),
    iconTheme: IconThemeData(color: AppColors.white),
  );

  ThemeData get darkTheme => ThemeData(
    primaryColor: AppColors.cyanBlueAzure,
    primarySwatch: AppColors.cyanBlueAzure,
    scaffoldBackgroundColor: AppColors.cynicalBlack,
    appBarTheme: _appBarTheme(),
    textTheme: _texttheme(),
    hoverColor: Colors.transparent,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
          return Colors.transparent;
        }),
      ),
    ),
    dividerColor: AppColors.quickSilver,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: AppColors.cyanBlueAzure,
    ).copyWith(onSecondary: AppColors.quickSilver),
    iconTheme: IconThemeData(color: AppColors.white),
  );

  AppBarTheme _appBarTheme() {
    return AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 20.0,
        color: AppColors.white,
      ),
    );
  }

  TextTheme _texttheme() {
    return TextTheme(
      titleLarge: TextStyle(
        fontSize: 88.0,
        color: AppColors.white,
        fontFamily: FontFamily.bebasNeue,
      ),
      titleMedium: TextStyle(
        fontSize: 49.0,
        fontFamily: FontFamily.smoochSans,
        fontWeight: FontWeight.w700,
        color: AppColors.cyanBlueAzure,
      ),
      titleSmall: TextStyle(
        fontSize: 20.0,
        fontFamily: FontFamily.smoochSans,
        fontWeight: FontWeight.w700,
        color: AppColors.quickSilver,
      ),
      bodyLarge: TextStyle(
        fontSize: 30.0,
        fontFamily: FontFamily.smoochSans,
        fontWeight: FontWeight.w700,
        color: AppColors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 22.0,
        color: Colors.black,
        fontFamily: FontFamily.smoochSans,
      ),
      bodySmall: TextStyle(
        fontSize: 20.0,
        color: AppColors.white,
        fontFamily: FontFamily.agencyFb,
      ),

      displayMedium: TextStyle(
        fontSize: 30.0,
        fontFamily: FontFamily.smoochSans,
        fontWeight: FontWeight.w700,
        color: AppColors.cyanBlueAzure,
      ),
    );
  }
}
