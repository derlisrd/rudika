import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rudika/src/providers/auth.provider.dart';
import 'package:rudika/src/services/api.services.dart';
import 'package:rudika/src/widgets/index.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  
  @override 
  void initState(){ 
      super.initState();
      String token = context.read<AuthProvider>().user.token;
      ApiServices().getMovements(token);
  }
  void _salir(BuildContext context){
    context.read<AuthProvider>().setIsLoading(false);
    context.read<AuthProvider>().setIsAuth(false);
    Navigator.pushReplacementNamed(context, 'login'); 
  }
  

  @override
  Widget build(BuildContext context) {

    String email =  Provider.of<AuthProvider>(context).user.email;
    return  SafeArea(child: 
        Column(
          children: [
            Text(email),
            
            const TitlePrimary('1.900.000')
          ],
        )
      );
  }
}