import 'package:facebook/screens/home_screen.dart';
import 'package:facebook/screens/login_screen.dart';
import 'package:facebook/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     initialRoute: 'splash_screen',
      routes: {
       'splash_screen' : (context) => SplashScreen(),
       'login_screen' : (context) => LoginScreen(),
       'home_screen' : (context) => HomeScreen(),
      },

    );
  }
}
