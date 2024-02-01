import 'package:flutter/material.dart';
import 'package:rudika/src/screens/index.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {

  int selectedIndex = 0;
  List<Widget> screens = const [HomeScreen(),SettingScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: selectedIndex,
        onTap: (value){
          setState(() {
            selectedIndex = value;
          });
        },
        backgroundColor: Colors.amber,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',  activeIcon: Icon(Icons.holiday_village)),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings',activeIcon: Icon(Icons.settings)),
        ]
        ),
      body: 
      IndexedStack(
        index: selectedIndex,
        children: screens
      ),
    );
  }
}