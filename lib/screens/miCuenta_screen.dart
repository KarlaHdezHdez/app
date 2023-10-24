import 'package:flutter/material.dart';

class MiCuenta_Screeen extends StatefulWidget {
  const MiCuenta_Screeen({super.key});

  @override
  State<MiCuenta_Screeen> createState() => _MiCuenta_ScreeenState();
}

class _MiCuenta_ScreeenState extends State<MiCuenta_Screeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi cuenta 🥬"),
        backgroundColor: Colors.green,
      ),
      body: bodyMiCuenta(),
    );
  }
}

class bodyMiCuenta extends StatelessWidget {
  const bodyMiCuenta({super.key});

  @override
  Widget build(BuildContext context) {
    final anchoPantalla = MediaQuery.of(context)
        .size
        .width; //se hace el llamado a la propiedad para obtener el ancho del dispositivo
    final altoPantalla = MediaQuery.of(context)
        .size
        .height; //se hace el llamado a la propiedad para obtener el alto del dispositivo

    final contenedorAncho = anchoPantalla * 0.9;
    final contenedorAlto = altoPantalla * 0.3;

    return MaterialApp(
        home: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // color: Colors.cyan,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: contenedorAncho,
                    height: 130,
                    color: Colors.green,
                    margin: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Row(
                      children: [
                        Container(
                          width: 250,
                          height: altoPantalla,
                          // color: Colors.deepOrange,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(
                                    left: 5, right: 5, top: 15),
                                child: Text(
                                  "🦝 Deysi García Murrieta",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                    left: 5, right: 5, top: 15, bottom: 15),
                                child: Text(
                                  "ElRinconsitoDe_Dey@gmail.com",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            child: Container(
                          // height: altoPantalla,
                          child: ClipOval(
                            child: Container(
                              color: Color.fromARGB(255, 22, 250, 38),
                              padding: const EdgeInsets.only(
                                  right: 4, left: 5, bottom: 5, top: 5),
                              child: ClipOval(
                                // borderRadius: BorderRadius.circular(26),
                                child: Image.asset(
                                  'assets/images/deysi.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ))
                        // Expanded(
                        //     child: Container(
                        //   // height: altoPantalla,
                        //   color: Colors.grey,
                        //   padding: const EdgeInsets.only(right: 5, left: 5, bottom: 5, top: 5),
                        //   child: ClipOval(
                        //     child: Image.asset(
                        //       'assets/images/deysi.png',
                        //       fit: BoxFit.fill,
                        //     ),
                        //   ),
                        // ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // color: const Color.fromARGB(255, 0, 212, 81),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: contenedorAncho,
                    height: 50,
                    color: Color.fromARGB(255, 68, 110, 70),
                    margin: const EdgeInsets.only(top: 60, bottom: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 250,
                          height: 50,
                          // color: Colors.deepOrange,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.only(left: 25, right: 5),
                                child: const Text(
                                  "Recordatorios",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            child: Container(
                              
                                height: altoPantalla,
                                color: Color.fromARGB(255, 39, 70, 41),
                                child: const Icon(
                                  Icons.alarm,
                                  size: 35,
                                  color: Colors.white,
                                )))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // color: const Color.fromARGB(255, 0, 212, 81),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: contenedorAncho,
                    height: 50,
                    color: Color.fromARGB(255, 68, 110, 70),
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 250,
                          height: 50,
                          // color: Colors.deepOrange,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.only(left: 25, right: 5),
                                child: const Text(
                                  "Ajustes",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            child: Container(
                                height: altoPantalla,
                                color: Color.fromARGB(255, 39, 70, 41),
                                child: const Icon(
                                  Icons.settings_applications,
                                  size: 35,
                                  color: Colors.white,
                                )))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // color: const Color.fromARGB(255, 0, 212, 81),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: contenedorAncho,
                    height: 50,
                    color: Color.fromARGB(255, 68, 110, 70),
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 250,
                          height: 50,
                          // color: Colors.deepOrange,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.only(left: 25, right: 5),
                                child: const Text(
                                  "Soporte",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            child: Container(
                                height: altoPantalla,
                                color: Color.fromARGB(255, 39, 70, 41),
                                child: const Icon(
                                  Icons.lightbulb_outline_sharp,
                                  size: 35,
                                  color: Colors.white,
                                )))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // color: const Color.fromARGB(255, 0, 212, 81),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: contenedorAncho,
                    height: 50,
                    color: Color.fromARGB(255, 68, 110, 70),
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 250,
                          height: 50,
                          // color: Colors.deepOrange,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.only(left: 25, right: 5),
                                child: const Text(
                                  "Aviso Legal",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            child: Container(
                                height: altoPantalla,
                                color: Color.fromARGB(255, 39, 70, 41),
                                child: const Icon(
                                  Icons.admin_panel_settings_outlined,
                                  size: 35,
                                  color: Colors.white,
                                )))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // color: Color.fromARGB(255, 212, 85, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: contenedorAncho,
                    height: 130,
                    // color: Colors.brown,
                    margin: const EdgeInsets.only(top: 10, bottom: 20),
                    // margin: const EdgeInsets.only(top: 60, bottom: 20),
                    child: Row(
                      children: [
                        Container(
                          // width: contenedorAncho,
                          width: 250,
                          // height: altoPantalla,
                          height: 80,
                          // color: const Color.fromARGB(255, 161, 161, 161),
                          color: Color.fromARGB(255, 126, 125, 125),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.only(left: 5, right: 5),
                                child: const Text(
                                  "Apartado para oferta Premium",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            child: Container(
                                // height: altoPantalla,
                                height: 80,
                                color: Color.fromARGB(255, 88, 88, 88),
                                child: const Icon(
                                  Icons.add_card_sharp,
                                  size: 35,
                                  color: Colors.white,
                                )))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
