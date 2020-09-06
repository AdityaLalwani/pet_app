import 'package:flutter/material.dart';
import 'drawerScreen.dart';
import 'homeScreen.dart';

void main() {
  runApp(MaterialApp(
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerScreen(),
          HomeScreen(),
        ],
      ),
    );
  }
}
