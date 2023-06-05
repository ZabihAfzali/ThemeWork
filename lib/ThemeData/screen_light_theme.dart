import 'package:flutter/material.dart';
import 'package:flutter_theme_work/ThemeData/screen_text_theme.dart';

class ThemeLight{
  ThemeLight._();


  static ThemeData lightTheme=ThemeData(
    primarySwatch: Colors.lightBlue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBar_theme,
    textTheme: Text_theme.text_theme_lt,
    iconTheme: icon_theme_data
  );

  static AppBarTheme appBar_theme=AppBarTheme(
    titleTextStyle: TextStyle(
    fontSize: 20,
    color: Colors.red,
    )
  );


 static IconThemeData icon_theme_data=IconThemeData(
   color: Colors.black,size: 40
 );
}