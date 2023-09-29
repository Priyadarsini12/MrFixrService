/*import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightTheme;

  bool get isDarkMode => _themeData == darkTheme;

  ThemeData get themeData => _themeData;

  void toggleTheme() {
    _themeData = isDarkMode ? lightTheme : darkTheme;
    notifyListeners();
  }
}


final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor:Colors.white.withOpacity(0.94),
   appBarTheme: AppBarTheme(color: Colors.white.withOpacity(0.94),),
   primaryColor: Colors.white.withOpacity(0.94),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: AppBarTheme(color: Colors.grey.shade900),
  scaffoldBackgroundColor: Colors.black,

  
);*/



import 'package:flutter/material.dart';
import 'package:mrfixr/share.dart';

class ThemeProvider with ChangeNotifier {
  late ThemeData _themeData = lightTheme;

  final ThemePreferences _themePreferences = ThemePreferences();

  ThemeProvider() {
    _loadThemePreference();
  }

  bool get isDarkMode => _themeData == darkTheme;

  ThemeData get themeData => _themeData;

  void toggleTheme() {
    _themeData = isDarkMode ? lightTheme : darkTheme;
    _themePreferences.setTheme(isDarkMode); 
    notifyListeners();
  }

  void _loadThemePreference() async {
    final isDark = await _themePreferences.getTheme();
    _themeData = isDark ? darkTheme : lightTheme;
    notifyListeners();
  }
  
  final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white.withOpacity(0.94),
    appBarTheme: AppBarTheme(color: Colors.white.withOpacity(0.94)),
    primaryColor: Colors.white.withOpacity(0.94),
  );

  final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(color: Colors.grey.shade900),
    scaffoldBackgroundColor: Colors.black,
  );
}

