import 'package:chalynyx_todo_app/login.dart';
import 'package:chalynyx_todo_app/signup.dart';
import 'package:chalynyx_todo_app/splash.dart';
import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/signup',
      routes: {
        '/': (context) => const SplashPage(),
        '/login': (context) => const Login(),
        '/signup': (context) => const SignUp(),
      },
    );
  }
}