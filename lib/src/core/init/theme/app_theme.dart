import '../../../core/init/theme/app_colors.dart';
import 'package:flutter/material.dart';
import '../../../../gen/fonts.gen.dart';

class AppTheme {
  ThemeData get theme => ThemeData(
    primarySwatch: AppColors.cyanBlueAzure,
    brightness: Brightness.light,
    appBarTheme: _appBarTheme(),
    textTheme: _texttheme(),
  );

  AppBarTheme _appBarTheme() {
    return AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 20.0,
        color: Colors.white,
      ),
    );
  }

  TextTheme _texttheme() {
    return TextTheme(
      titleLarge: TextStyle(
        fontSize: 88.0,
        color: Colors.white,
        fontFamily: FontFamily.bebasNeue,
      ),
      titleMedium: TextStyle(
        fontSize: 30.0,
        fontFamily: FontFamily.smoochSans,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(fontSize: 16.0, color: Colors.white),
      bodySmall: TextStyle(
        fontSize: 20.0,
        color: Colors.white,
        fontFamily: FontFamily.agencyFb,
      ),
    );
  }
}
