import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rudika/src/config/constants.dart';
import 'package:rudika/src/providers/auth.provider.dart';
import 'package:rudika/src/screens/index.dart';


void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_)=> AuthProvider())
  ],
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Constants.primaryColor,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.routeName,
      routes: {
        'welcome' :(context) => const WelcomeScreen(),
        "login":(context) => const LoginScreen(),
        "register":(context) => const RegisterScreen(),
        "authmain":(context) => const AuthScreen(),
        "home":(context) => const HomeScreen(),
        "settings":(context) => const SettingScreen(),
      },
    );
  }
}
