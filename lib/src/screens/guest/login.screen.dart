import 'package:flutter/material.dart';
import 'package:rudika/src/widgets/buttons/primary.button.dart';
import 'package:rudika/src/widgets/texts/title.primary.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const Center(child: TitlePrimary("Entrar")),
          
          PrimaryButton(
            text: "INGRESAR",
            onTap: () {},
          )
        ],
      )),
    );
  }
}
