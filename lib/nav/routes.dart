import 'package:flutter/material.dart';
import 'package:translate_this/screens/information_screen.dart';
import 'package:translate_this/screens/miCuenta_screen.dart';

class Routes extends StatelessWidget {
  final int index;
  const Routes({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [
      const Information_Screen(),
      const MiCuenta_Screeen(),
      
      const Information_Screen(),
      const MiCuenta_Screeen(),
    ];
    return myList[index];
  }
}
