import 'package:flutter/material.dart';
import 'package:mrfixr/loginscreen.dart';
import 'package:mrfixr/morescreen/profile.dart';
import 'package:mrfixr/notification.dart';
import 'package:mrfixr/theme.dart';
import 'package:provider/provider.dart';

import 'morescreen/language.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
      final themeProvider = Provider.of<ThemeProvider>(context);
    return  MaterialApp(
      theme: ThemeData.light(), // Your light theme
      darkTheme: ThemeData.dark(), // Your dark theme
      themeMode: Provider.of<ThemeProvider>(context).isDarkMode
          ? ThemeMode.dark
          : ThemeMode.light,

      debugShowCheckedModeBanner: false,
      
     // home:LoginScreen(),
      home:const Profilepage(),
     // home:Language(),
    );
  }
}

