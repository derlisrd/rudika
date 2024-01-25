import 'package:flutter/material.dart';
import 'package:rudika/src/screens/guest/login.screen.dart';
import 'package:rudika/src/screens/guest/register.screen.dart';
import 'package:rudika/src/screens/guest/welcome.screen.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        "welcome":(context) => const WelcomeScreen(),
        "login":(context) => const LoginScreen(),
        "register":(context) => const RegisterScreen(),
      },
    );
  }
}
