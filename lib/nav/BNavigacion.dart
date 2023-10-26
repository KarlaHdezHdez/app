// ignore: file_names
import 'package:flutter/material.dart';


class BNavigacion extends StatefulWidget {
  final Function currentIndex;
  const BNavigacion({Key? key, required this.currentIndex}) : super(key: key);

  @override
  State<BNavigacion> createState() => _BNavigacionState();
}

class _BNavigacionState extends State<BNavigacion> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: index,
        onTap: (int i) {
          setState(() {
          index = i;
          widget.currentIndex(i);
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        iconSize: 25.0,
        selectedFontSize: 14.0,
        unselectedFontSize: 12.0,
        // unselectedItemColor: Colors.blueGrey,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              activeIcon: Icon(Icons.home_outlined),
              label: 'Inicio'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart_rounded),
              activeIcon: Icon(Icons.add_shopping_cart_sharp),
              label: 'Compras'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_4),
              activeIcon: Icon(Icons.person_4_outlined),
              label: 'Usuarios'),
          BottomNavigationBarItem(
              icon: Icon(Icons.date_range_sharp),
              label: 'Recordatorios',
              activeIcon: Icon(Icons.date_range_outlined))
        ]);
        
  }
}
