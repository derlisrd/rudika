import 'package:flutter/material.dart';
import 'package:rudika/src/controllers/login.controller.dart';
import 'package:rudika/src/screens/guest/login.screen.dart';
import 'package:rudika/src/screens/guest/register.screen.dart';
import 'package:rudika/src/screens/guest/welcome.screen.dart';
import 'package:rudika/src/widgets/buttons/primary.button.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'welcome',
      routes: {
        "welcome":(context) => const WelcomeScreen(),
        "login":(context) => const LoginScreen(),
        "register":(context) => const RegisterScreen(),
      },
    );
  }
}
