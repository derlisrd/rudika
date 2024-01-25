import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rudika/src/providers/auth.provider.dart';
import 'package:rudika/src/widgets/buttons/secondary.button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  
  @override 
  void initState(){ 
      super.initState(); 
  }
  void _salir(BuildContext context){
    context.read<AuthProvider>().setIsLoading(false);
    context.read<AuthProvider>().setIsAuth(false);
    Navigator.pushReplacementNamed(context, 'login'); 
  }
  

  @override
  Widget build(BuildContext context) {

    String email =  Provider.of<AuthProvider>(context).user.email;
    String token =  Provider.of<AuthProvider>(context).user.token;
    int id =  Provider.of<AuthProvider>(context).user.id;
    return  Scaffold(
      body: SafeArea(child: 
        Column(
          children: [
            Text( email ),
            Text( id.toString() ),
            Text( token ),
            SecondaryButton(text: 'SALIR', onTap: (){ _salir(context); })
          ],
        )
      ),
    );
  }
}