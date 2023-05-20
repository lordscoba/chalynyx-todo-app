import 'package:chalynyx_todo_app/admin/home.dart';
import 'package:chalynyx_todo_app/admin/taskhome.dart';
import 'package:chalynyx_todo_app/screens/home.dart';
import 'package:chalynyx_todo_app/screens/login.dart';
import 'package:chalynyx_todo_app/screens/signup.dart';
import 'package:chalynyx_todo_app/screens/splash.dart';
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
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/login': (context) => const Login(),
        '/signup': (context) => const SignUp(),
        '/home': (context) => const Home(),
        '/admin/home': (context) => const AdminHome(),
        '/admin/task': (context) => const TaskHome(),
      },
    );
  }
}
