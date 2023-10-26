import "package:flutter/material.dart";
import 'package:table_calendar/table_calendar.dart';

// statefulW //al escribir eso, se aparecerá una sugerencia, damos clic ahí para generar todo el código BASE automaticamete.

// ignore: camel_case_types
class Recordatorio_Screen extends StatefulWidget {
  const Recordatorio_Screen({super.key});

  @override
  State<Recordatorio_Screen> createState() => Recordatorio_ScreenState();
}

// ignore: camel_case_types
class Recordatorio_ScreenState extends State<Recordatorio_Screen> {
  @override
  Widget build(BuildContext context) {
    // return Container();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Recordatorios"),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Navega a la página de inicio
          },
        ),
      ),
      // body: const Center(
      //   child: Text("🦝deysiGarcía "),
      // ),
      body: RecordatorioBody(),
    );
  }
}

class RecordatorioBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      home: Scaffold(
        
        ),
      );   
  }
}
