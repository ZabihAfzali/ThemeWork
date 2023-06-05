

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class ThemeNotifier extends ChangeNotifier{

  bool is_dark_theme=false;

  bool get getThemeStatus{
    return is_dark_theme;
  }

  void setThemeStatus(bool isDarkTheme){
    is_dark_theme=isDarkTheme;
    notifyListeners();
  }


}