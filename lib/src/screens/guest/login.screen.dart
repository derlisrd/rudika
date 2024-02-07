import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rudika/src/models/login.response.model.dart';
import 'package:rudika/src/providers/auth.provider.dart';
import 'package:rudika/src/services/api.services.dart';
import 'package:rudika/src/widgets/index.dart';




class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController= TextEditingController();
  String emailError = '';
  String passwordError ='';
  bool passwordVisible=false; 
  
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

  void _tryLogin(BuildContext context) async{
    if(emailController.text.isEmpty){
      setState(() {
        emailError = "Complete el campo email correctamente";
      });
      return;
    }
    setState(() {
        emailError = "";
      });
    if(passwordController.text.isEmpty){
      setState(() {
        passwordError = "Complete el campo contraseña correctamente";
      });
      return;
    }
      setState(() {
        passwordError = "";
      });
    
    setState(() {context.read<AuthProvider>().setIsLoading(true);});
    LoginResponseModel api = await ApiServices().loginWithEmailAndPassword(email: emailController.text, password: passwordController.text);
    
    if(!api.success){
     _mostrarAlert("Error", api.message ?? "Error");
     setState(() {
      context.read<AuthProvider>().setIsLoading(false);
      
     });
    }
    if(api.success){
      if (context.mounted) Navigator.pushReplacementNamed(context, 'authmain');
      setState(() {
        context.read<AuthProvider>().setIsAuth(true);
        context.read<AuthProvider>().setUser(api.results);
      });
    }
  }



  @override
  Widget build(BuildContext context) {

    

    return Scaffold(
/*       backgroundColor: Constants.backgroundLightColor, */
      body: context.watch<AuthProvider>().isLoading ? _loadingScreen(context) : SafeArea(
          child: Center(
            child: Container(
              constraints: const BoxConstraints(
                maxWidth: 480,
              ),
              child: Column(
                      children: [
                        const SizedBox(height: 12),
                        const Icon(Icons.lock,size: 64),
                        const Center(child: TitlePrimary("Entrar")),
                        FieldPrimary( hintText: 'E-mail', controller: emailController, errorText: emailError.isEmpty ? null : emailError ,),
                        FieldPassword( oscureText: passwordVisible, hintText: 'Contraseña', errorText: passwordError.isEmpty ? null : passwordError, onPressed: switchPass, controller: passwordController,),
                        Row(
                          children: [
                            const SizedBox(width: 18),
                            const Subtitle('No tienes cuenta?'),
                            GestureDetector(
                              onTap: (){ Navigator.pushNamed(context, 'register');},
                              child: const Subtitle('Registrate'),
                            ),
                          ],
                        ),
                        PrimaryButton(
                          text: "INGRESAR",
                          onTap: (){ _tryLogin(context);},
                        )
                      ],
                    ),
            ),
          )
      ) ,
    );
  }


  _mostrarAlert(String title, String txt){
    showDialog(context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: MontseText(title),
        content: MontseText(txt),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const MontseText('Cerrar'),
          ),
        ],
      );
    },
    );
  } 


Widget _loadingScreen(BuildContext context){

  return const Scaffold(
    body: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(), // Puedes usar cualquier otro indicador de carga
            SizedBox(height: 16.0),
            Text('Cargando...'),
          ],
        ) 
      ),
  );
  
}









}


