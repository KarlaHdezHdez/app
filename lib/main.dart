import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:translate_this/nav/BNavigacion.dart';
import 'package:translate_this/nav/routes.dart';


void main() {
  debugPaintSizeEnabled = false; // Desactiva el banner "Debug"
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(appBarTheme: const AppBarTheme(centerTitle: true)),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text(
      //       "☺ Deysi 🦝🥬",
      //       style: TextStyle(
      //           // color: Colors.redAccent, backgroundColor: Colors.amber),
      //           // color: Colors.redAccent,decoration: TextDecoration.underline),
      //           color: Color.fromARGB(255, 255, 255, 255)),
      //     ),
      //     // shadowColor: Colors.brown,
      //     shadowColor: const Color.fromARGB(255, 255, 0, 0),
      //   ),
      //   // body: Text(""),
      //   // body: NuevoApartado(),
      //   body: Information_Screen(),
      // ),
      // home: const BNavigacion(),
      home:navegacion(),
    );
  }
  //
}

// class navegacion extends StatelessWidget {
class navegacion extends StatefulWidget {
  const navegacion({Key? key}) : super(key: key);

  @override
  State<navegacion> createState() => _navegacionState();
}

class _navegacionState extends State<navegacion> {
  int index = 0;
  BNavigacion ? myNavigacionBar;
  @override
  void initState() {
    myNavigacionBar = BNavigacion(currentIndex: (i){
      setState(() {
        index = i;
      });
    });
    super.initState();
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BNavigacion(),
      bottomNavigationBar: myNavigacionBar,
      // body: Routes (index:0),
      body: Routes (index: index),
    );
  }
}



class NuevoApartado extends StatelessWidget {
  const NuevoApartado({super.key});

  @override
  Widget build(BuildContext context) {
    // Tamaño de la pantalla - dimensiones
    final anchoPantalla = MediaQuery.of(context)
        .size
        .width; //se hace el llamado a la propiedad para obtener el ancho del dispositivo
    final altoPantalla = MediaQuery.of(context)
        .size
        .height; //se hace el llamado a la propiedad para obtener el alto del dispositivo

    final contenedorAncho = anchoPantalla * 0.8;
    final contenedorAlto = altoPantalla * 0.3;
    //Este es el punto máximo, debido a que se están ocupando 3 contenedores
    // y los otros 2 contenedores ocupan  el 0.6 del espacio en pantalla, por eso se utiliza una propiedad
    // para obtener la informacion de las dimensiones de la pantalla del dispositivo
    // ----
    // Tamaño de la pantalla - dimensiones

    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Color.fromARGB(220, 255, 255, 255),
                // margin: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Center(
                    //   // const Text(
                    //   //   "Contenedor 1",
                    //   //   style: TextStyle(color: Colors.blue),
                    //   // ),
                    //   child: Container(
                    //     width: contenedorAncho,
                    //     // height: contenedorAlto,
                    //     height: 120,
                    //     color: Colors.deepPurple,
                    //     margin: EdgeInsets.only(left: 20, right: 20),
                    //   ),
                    // )
                    Container(
                      width: contenedorAncho,
                      // height: altoPantalla,
                      height: 150,

                      // color: Colors.amberAccent,
                      color: Color.fromARGB(255, 0, 102, 54),
                      margin: const EdgeInsets.only(top: 20, bottom: 20),

                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // const Center(child: Text("dasdasd")),
                          Container(
                            width: anchoPantalla,
                            height: 30,
                            // color: Colors.deepPurple,
                            color: Color.fromARGB(255, 0, 185, 99),
                            child: const Center(
                              child: Text(
                                "Titulo del contenedor",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  //blanco
                                ),
                              ),
                            ),
                          ),

                          Container(
                            width: contenedorAncho,
                            height: 30,
                            padding: const EdgeInsetsDirectional.only(
                              start: 20,
                              end: 20,
                            ),
                            // color: Colors.deepPurple,
                            color: const Color.fromARGB(255, 0, 155, 83),
                            child: const SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              //para que la información no se salga hacia los laterales (izquierda | derecha)
                              child: Row(children: [
                                Text(
                                  "Descripción  desplazable horizontalmente si se le añade más informacion",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    //blanco
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          // para ocupar todo el espacio restante del contenedor padre :0
                          Expanded(
                              child: Container(
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, bottom: 5, top: 5),
                            child: const SingleChildScrollView(
                              // scrollDirection: Axis.horizontal,
                              scrollDirection: Axis.vertical,
                              child: Column(
                                children: [
                                  Text(
                                    "Texto completo del contenedor, Texto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedor Texto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedor",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 12),
                                    softWrap: true,
                                    // textAlign: TextAlign.center,
                                    // textDirection: TextDirection.rtl, //letras de derecha a izquierda - Right to Left
                                    textDirection: TextDirection.ltr,
                                    //letras de izquierda a derecha - Left to Right
                                    textAlign: TextAlign.justify,
                                    // para justificar el texto
                                  )
                                ],
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                    // const Text("hola")
                    //esto está para comprender los contenedores y sus posiciones
                  ],
                ),
              ),
              Container(
                color: Color.fromARGB(220, 255, 255, 255),
                // margin: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Center(
                    //   // const Text(
                    //   //   "Contenedor 1",
                    //   //   style: TextStyle(color: Colors.blue),
                    //   // ),
                    //   child: Container(
                    //     width: contenedorAncho,
                    //     // height: contenedorAlto,
                    //     height: 120,
                    //     color: Colors.deepPurple,
                    //     margin: EdgeInsets.only(left: 20, right: 20),
                    //   ),
                    // )
                    Container(
                      width: contenedorAncho,
                      // height: altoPantalla,
                      height: 150,

                      // color: Colors.amberAccent,
                      color: Color.fromARGB(255, 0, 102, 54),
                      margin: const EdgeInsets.only(top: 20, bottom: 20),

                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // const Center(child: Text("dasdasd")),
                          Container(
                            width: anchoPantalla,
                            height: 30,
                            // color: Colors.deepPurple,
                            color: Color.fromARGB(255, 0, 185, 99),
                            child: const Center(
                              child: Text(
                                "Titulo del contenedor",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  //blanco
                                ),
                              ),
                            ),
                          ),

                          Container(
                            width: contenedorAncho,
                            height: 30,
                            padding: const EdgeInsetsDirectional.only(
                              start: 20,
                              end: 20,
                            ),
                            // color: Colors.deepPurple,
                            color: const Color.fromARGB(255, 0, 155, 83),
                            child: const SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              //para que la información no se salga hacia los laterales (izquierda | derecha)
                              child: Row(children: [
                                Text(
                                  "Descripción  desplazable horizontalmente si se le añade más informacion",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    //blanco
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          // para ocupar todo el espacio restante del contenedor padre :0
                          Expanded(
                              child: Container(
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, bottom: 5, top: 5),
                            child: const SingleChildScrollView(
                              // scrollDirection: Axis.horizontal,
                              scrollDirection: Axis.vertical,
                              child: Column(
                                children: [
                                  Text(
                                    "Texto completo del contenedor, Texto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedor Texto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedor",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 12),
                                    softWrap: true,
                                    // textAlign: TextAlign.center,
                                    // textDirection: TextDirection.rtl, //letras de derecha a izquierda - Right to Left
                                    textDirection: TextDirection.ltr,
                                    //letras de izquierda a derecha - Left to Right
                                    textAlign: TextAlign.justify,
                                    // para justificar el texto
                                  )
                                ],
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                    // const Text("hola")
                    //esto está para comprender los contenedores y sus posiciones
                  ],
                ),
              ),
              Container(
                color: Color.fromARGB(220, 255, 255, 255),
                // margin: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Center(
                    //   // const Text(
                    //   //   "Contenedor 1",
                    //   //   style: TextStyle(color: Colors.blue),
                    //   // ),
                    //   child: Container(
                    //     width: contenedorAncho,
                    //     // height: contenedorAlto,
                    //     height: 120,
                    //     color: Colors.deepPurple,
                    //     margin: EdgeInsets.only(left: 20, right: 20),
                    //   ),
                    // )
                    Container(
                      width: contenedorAncho,
                      // height: altoPantalla,
                      height: 150,

                      // color: Colors.amberAccent,
                      color: Color.fromARGB(255, 0, 102, 54),
                      margin: const EdgeInsets.only(top: 20, bottom: 20),

                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // const Center(child: Text("dasdasd")),
                          Container(
                            width: anchoPantalla,
                            height: 30,
                            // color: Colors.deepPurple,
                            color: Color.fromARGB(255, 0, 185, 99),
                            child: const Center(
                              child: Text(
                                "Titulo del contenedor",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  //blanco
                                ),
                              ),
                            ),
                          ),

                          Container(
                            width: contenedorAncho,
                            height: 30,
                            padding: const EdgeInsetsDirectional.only(
                              start: 20,
                              end: 20,
                            ),
                            // color: Colors.deepPurple,
                            color: const Color.fromARGB(255, 0, 155, 83),
                            child: const SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              //para que la información no se salga hacia los laterales (izquierda | derecha)
                              child: Row(children: [
                                Text(
                                  "Descripción  desplazable horizontalmente si se le añade más informacion",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    //blanco
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          // para ocupar todo el espacio restante del contenedor padre :0
                          Expanded(
                              child: Container(
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, bottom: 5, top: 5),
                            child: const SingleChildScrollView(
                              // scrollDirection: Axis.horizontal,
                              scrollDirection: Axis.vertical,
                              child: Column(
                                children: [
                                  Text(
                                    "Texto completo del contenedor, Texto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedor Texto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedor",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 12),
                                    softWrap: true,
                                    // textAlign: TextAlign.center,
                                    // textDirection: TextDirection.rtl, //letras de derecha a izquierda - Right to Left
                                    textDirection: TextDirection.ltr,
                                    //letras de izquierda a derecha - Left to Right
                                    textAlign: TextAlign.justify,
                                    // para justificar el texto
                                  )
                                ],
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                    // const Text("hola")
                    //esto está para comprender los contenedores y sus posiciones
                  ],
                ),
              ),
              Container(
                color: Color.fromARGB(220, 255, 255, 255),
                // margin: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Center(
                    //   // const Text(
                    //   //   "Contenedor 1",
                    //   //   style: TextStyle(color: Colors.blue),
                    //   // ),
                    //   child: Container(
                    //     width: contenedorAncho,
                    //     // height: contenedorAlto,
                    //     height: 120,
                    //     color: Colors.deepPurple,
                    //     margin: EdgeInsets.only(left: 20, right: 20),
                    //   ),
                    // )
                    Container(
                      width: contenedorAncho,
                      // height: altoPantalla,
                      height: 150,

                      // color: Colors.amberAccent,
                      color: Color.fromARGB(255, 0, 102, 54),
                      margin: const EdgeInsets.only(top: 20, bottom: 20),

                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // const Center(child: Text("dasdasd")),
                          Container(
                            width: anchoPantalla,
                            height: 30,
                            // color: Colors.deepPurple,
                            color: Color.fromARGB(255, 0, 185, 99),
                            child: const Center(
                              child: Text(
                                "Titulo del contenedor",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  //blanco
                                ),
                              ),
                            ),
                          ),

                          Container(
                            width: contenedorAncho,
                            height: 30,
                            padding: const EdgeInsetsDirectional.only(
                              start: 20,
                              end: 20,
                            ),
                            // color: Colors.deepPurple,
                            color: const Color.fromARGB(255, 0, 155, 83),
                            child: const SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              //para que la información no se salga hacia los laterales (izquierda | derecha)
                              child: Row(children: [
                                Text(
                                  "Descripción  desplazable horizontalmente si se le añade más informacion",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    //blanco
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          // para ocupar todo el espacio restante del contenedor padre :0
                          Expanded(
                              child: Container(
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, bottom: 5, top: 5),
                            child: const SingleChildScrollView(
                              // scrollDirection: Axis.horizontal,
                              scrollDirection: Axis.vertical,
                              child: Column(
                                children: [
                                  Text(
                                    "Texto completo del contenedor, Texto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedor Texto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedorTexto completo del contenedor",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 12),
                                    softWrap: true,
                                    // textAlign: TextAlign.center,
                                    // textDirection: TextDirection.rtl, //letras de derecha a izquierda - Right to Left
                                    textDirection: TextDirection.ltr,
                                    //letras de izquierda a derecha - Left to Right
                                    textAlign: TextAlign.justify,
                                    // para justificar el texto
                                  )
                                ],
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                    // const Text("hola")
                    //esto está para comprender los contenedores y sus posiciones
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
