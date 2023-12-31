

import 'package:flutter/material.dart';
import 'package:mrfixr/loginscreen.dart';
import 'package:mrfixr/morescreen/language.dart';
import 'package:mrfixr/morescreen/profile.dart';
import 'package:mrfixr/signin.dart';
import 'package:mrfixr/theme.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: Provider.of<ThemeProvider>(context).themeData,
      debugShowCheckedModeBanner: false,
       home:LoginScreen(), 
      //home: Profilepage(),
      //home:const Language(),
      //home:Signin()
    );
  }
}
