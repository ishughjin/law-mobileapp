import 'package:flutter/material.dart';
import 'package:incypio_app/page/first_page.dart';
import 'package:incypio_app/page/home_screen.dart';
import 'package:incypio_app/page/login_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/login': (context) => const LoginScreen(),
      },
    );
  }
}
