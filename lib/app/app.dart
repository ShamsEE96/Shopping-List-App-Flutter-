import 'package:bootcamp_01/ui/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bootcamp',
      theme: ThemeData(
        // elevatedButtonTheme: ElevatedButtonThemeData(
        //   style: ElevatedButton.styleFrom(
        //     minimumSize: Size(double.infinity, 50),
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(40),
        //     ),
        //   ),
        // ),
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SplashScreen(),
    );
  }
}
