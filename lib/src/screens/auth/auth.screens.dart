import 'package:flutter/material.dart';
import 'package:rudika/src/config/constants.dart';
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
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(onPressed: () {
          
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(30)
          ),
          child: BottomNavigationBar(
            elevation: 0,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            currentIndex: selectedIndex,
            onTap: (value){
              setState(() {
                selectedIndex = value;
              });
            },
            selectedItemColor: Constants.primaryColor,
            unselectedItemColor: Colors.black54,
            backgroundColor: Colors.white,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'Home',
                activeIcon: Icon(Icons.home)
              ),
              BottomNavigationBarItem(icon: Icon(Icons.settings), 
              label: 'Settings',activeIcon: Icon(Icons.settings)),
            ]
          ),
        ),
      body: 
      IndexedStack(
        index: selectedIndex,
        children: screens
      ),
    );
  }
}