import 'package:flutter/material.dart';
import 'package:rudika/src/controllers/login.controller.dart';
import 'package:rudika/src/widgets/buttons/primary.button.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
   LoginController loginController = LoginController();
   TextEditingController emailTextController = TextEditingController() ;
   TextEditingController passwordTextController = TextEditingController() ;
  trylogin (){
    loginController.tryLogin (emailTextController.text, passwordTextController.text);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                TextField(
                  controller: emailTextController,
                ),
                TextField(
                  controller: passwordTextController,
                ),
                PrimaryButton(text: 'INGRESAR',onTap: trylogin)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
