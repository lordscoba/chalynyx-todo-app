import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:chalynyx_todo_app/routes.dart';
import 'package:chalynyx_todo_app/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final String title = "Chalynyx To do App";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: AnimatedSplashScreen(
        duration: 3000,
        splashIconSize: double.infinity,
        splash: const SplashPage(),
        nextScreen: NextScreen(title: title),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: const Color(0xFF0BA37F),
      ),
    );
  }
}
