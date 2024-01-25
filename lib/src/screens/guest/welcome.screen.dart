import 'package:flutter/material.dart';
import 'package:rudika/src/widgets/buttons/primary.button.dart';
import 'package:rudika/src/widgets/buttons/secondary.button.dart';
import 'package:rudika/src/widgets/texts/title.primary.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const TitlePrimary('Bienvenido'),
            const SizedBox(height: 48,),
            Container( margin: const EdgeInsets.all(12), child: const Image(image: AssetImage('assets/logo.png'))),
            const SizedBox(height: 48,),
            PrimaryButton(text: 'INGRESAR', onTap: (){ Navigator.pushNamed(context, 'login'); },),
            SecondaryButton(text: 'REGISTRAR', onTap: () { Navigator.pushNamed(context, 'register'); },),
          ],
        ),
      ),
    );
  }
}