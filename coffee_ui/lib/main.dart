// import 'package:coffee_ui/screens/login_screen.dart';
import 'package:coffee_ui/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() =>runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF212325),
      ),
      home:
      WelcomeScreen(),
    );
  }
}

