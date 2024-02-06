import 'package:flutter/material.dart';
import 'package:rudika/src/screens/index.dart';



class Routes{

  String initialRoute = 'welcome';


  Map<String, Widget Function(BuildContext)> routes(BuildContext context){
    return {
        'welcome' :(context) => const WelcomeScreen(),
        "login":(context) => const LoginScreen(),
        "register":(context) => const RegisterScreen(),
        "authmain":(context) => const AuthScreen(),
        "home":(context) => const HomeScreen(),
        "settings":(context) => const SettingScreen(),
      };
  }
}