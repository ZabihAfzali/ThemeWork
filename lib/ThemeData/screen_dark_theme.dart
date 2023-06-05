import 'package:flutter/material.dart';
import 'package:flutter_theme_work/ThemeData/screen_theme_colors.dart';

class ThemeDark{
  ThemeDark._();

  static ThemeData dark_theme=ThemeData(
    primarySwatch: Colors.brown,
      scaffoldBackgroundColor: ThemeColors.backgroundColor_dt,
      appBarTheme: appBar_theme,
    textTheme: text_theme,
    iconTheme: icon_theme_data
  );

  static AppBarTheme appBar_theme=AppBarTheme(
      backgroundColor: Colors.yellow,
      titleTextStyle: TextStyle(
        fontSize: 20,
        color: Colors.white,
      )
  );

  static TextTheme text_theme=TextTheme(
      headline1: TextStyle(fontSize: 35,color: Colors.green,fontWeight: FontWeight.w700)
  );

  static IconThemeData icon_theme_data=IconThemeData(
      color: Colors.white,size: 40
  );
}