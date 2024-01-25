import 'package:flutter/material.dart';
import 'package:rudika/src/widgets/buttons/primary.button.dart';
import 'package:rudika/src/widgets/textfields/field.password.dart';
import 'package:rudika/src/widgets/textfields/field.primary.dart';
import 'package:rudika/src/widgets/texts/subtitle.dart';
import 'package:rudika/src/widgets/texts/title.primary.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool passwordVisible=false; 
  bool passwordVisible2=false; 
      
   @override 
  void initState(){ 
      super.initState(); 
      passwordVisible=true; 
  }

  void switchPass (){
    setState(() {
      passwordVisible = !passwordVisible;
    });
  } 
  void switchPass2 (){
    setState(() {
      passwordVisible2 = !passwordVisible2;
    });
  } 



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const Center(child: TitlePrimary("Registrarme")),
          const FieldPrimary( hintText: 'Nombre',),
          const FieldPrimary( hintText: 'E-mail',),
          FieldPassword( oscureText: passwordVisible, hintText: 'Contraseña', onPressed: switchPass),
          FieldPassword( oscureText: passwordVisible2, hintText: 'Repetir contraseña', onPressed: switchPass2),
          Row(
            children: [
              const SizedBox(width: 18),
              const Subtitle('Ya tienes cuenta?'),
              GestureDetector(
                onTap: (){ Navigator.pop(context);},
                child: const Subtitle('Entrar'),
              ),
            ],
          ),
          PrimaryButton(
            text: "REGISTRAR",
            onTap: () {},
          )
        ],
      )),
    );
  }
}
