import 'package:flutter/material.dart';

class Register_Screen extends StatefulWidget {
  const Register_Screen({super.key});

  @override
  State<Register_Screen> createState() => _Register_ScreenState();
}

class _Register_ScreenState extends State<Register_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registro"),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 26, 132, 32),
                Color.fromARGB(255, 6, 149, 80),
              ],
            ),
          ),
        ),
      ),
      body: body_Register(),
    );
  }
}

class body_Register extends StatelessWidget {
  String name = "";
  String lastName = "";

  TextEditingController nombreController = TextEditingController();
  TextEditingController apellidoPaternoController = TextEditingController();
  TextEditingController apellidoMaternoController = TextEditingController();
  TextEditingController telfController = TextEditingController();
  TextEditingController correoController = TextEditingController();

  // GlobalKey formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final anchoPantalla = MediaQuery.of(context)
        .size
        .width; //se hace el llamado a la propiedad para obtener el ancho del dispositivo
    final altoPantalla = MediaQuery.of(context)
        .size
        .height; //se hace el llamado a la propiedad para obtener el alto del dispositivo
    final contenedorAncho = anchoPantalla * 0.8;
    final contenedorAlto = altoPantalla * 0.3;

    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 20),
                width: anchoPantalla,
                height: altoPantalla / 6,
                // color: Colors.blueAccent,
                child: Column(
                  children: [
                    Container(
                      width: contenedorAncho,
                      // color: Colors.amberAccent,
                      margin: const EdgeInsets.only(bottom: 10),
                      // child: ClipOval(
                      child: Image.asset(
                        // 'assets/images/deysi.png',
                        'assets/images/logo/logo.png',
                        height: 80,
                      ),
                      // ),
                    ),
                    Container(
                      // width: ,
                      // color: Colors.deepOrange,
                      child: const Text(
                        "Registrarse",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // color: Colors.teal,
                width: anchoPantalla,
                height: 30,
                margin: const EdgeInsets.only(bottom: 10, left: 32),
                child: const Text(
                  "Ingresa los siguientes datos",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  // width: anchoPantalla,
                  width: anchoPantalla * 0.8,
                  // height: altoPantalla / 7,
                  // color: Colors.pink,
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: <Widget>[
                        Container(
                          // margin: const EdgeInsets.all(
                          //     15), // Ajusta el margen según tus necesidades
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                10.0), // Ajusta el radio según tus preferencias
                            color: const Color.fromARGB(255, 236, 236,
                                236), // Color de fondo del Container
                          ),
                          child: TextFormField(
                            decoration:
                                const InputDecoration(labelText: "Nombre"),

                            controller: nombreController,
                            // style: const TextStyle(color: Colors.white),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, ingrese su nombre';
                              }
                              if (value.length < 3 || value.length > 12) {
                                return 'El nombre debe tener entre 3 y 12 caracteres';
                              }
                              if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
                                return 'El nombre solo debe contener letras y espacios';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top:
                                  10), // Ajusta el margen según tus necesidades
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                10.0), // Ajusta el radio según tus preferencias
                            color: const Color.fromARGB(255, 236, 236,
                                236), // Color de fondo del Container
                          ),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                labelText: "Apellido Paterno"),
                            controller: apellidoPaternoController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, ingrese su Apellido paterno';
                              }
                              if (value.length < 3 || value.length > 12) {
                                return 'El apellido debe tener entre 3 y 12 caracteres';
                              }
                              if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
                                return 'El apellido solo debe contener letras y espacios';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top:
                                  10), // Ajusta el margen según tus necesidades
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                10.0), // Ajusta el radio según tus preferencias
                            color: const Color.fromARGB(255, 236, 236,
                                236), // Color de fondo del Container
                          ),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                labelText: "Apellido Materno"),
                            controller: apellidoMaternoController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, ingrese su Apellido materno';
                              }
                              if (value.length < 3 || value.length > 12) {
                                return 'El apellido debe tener entre 3 y 12 caracteres';
                              }

                              if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
                                return 'El apellido solo debe contener letras y espacios';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top:
                                  10), // Ajusta el margen según tus necesidades // Ajusta el margen según tus necesidades
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                10.0), // Ajusta el radio según tus preferencias
                            color: const Color.fromARGB(255, 236, 236,
                                236), // Color de fondo del Container
                          ),
                          child: TextFormField(
                            decoration:
                                const InputDecoration(labelText: "Telefono"),
                            controller: telfController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, ingrese su número de teléfono';
                              }
                              // Remover espacios, guiones u otros caracteres no deseados.
                              final cleanedValue =
                                  value.replaceAll(RegExp(r'[^\d]'), '');
                              if (cleanedValue.length != 10) {
                                return 'El número de teléfono debe tener exactamente 10 dígitos';
                              }
                              // Puedes agregar validaciones adicionales para números de teléfono si es necesario.
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 10,
                              bottom:
                                  10), // Ajusta el margen según tus necesidades
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                10.0), // Ajusta el radio según tus preferencias
                            color: const Color.fromARGB(255, 236, 236,
                                236), // Color de fondo del Container
                          ),
                          child: TextFormField(
                            decoration:
                                const InputDecoration(labelText: "Correo"),
                            controller: correoController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, ingrese su correo electronico';
                              }
                              if (!value.contains('@')) {
                                return 'Ingrese un correo electrónico válido';
                              }
                              if (!RegExp(
                                      r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
                                  .hasMatch(value)) {
                                return 'Ingrese un correo electrónico válido';
                              }
                              // Puedes agregar validaciones adicionales para números de teléfono si es necesario.
                              return null;
                            },
                          ),
                        ),
                        ElevatedButton(
                          // ElevatedButton.icon(
                          onPressed: () {
                            // Aquí puedes manejar la lógica cuando se presione el botón
                            // if (formKey.currentState.validate()) {
                            //   // El formulario es válido, realiza la acción deseada
                            // }
                            if (formKey.currentState!.validate()) {
                              // Los campos pasaron la validación
                              // Puedes realizar acciones o enviar datos aquí
                            }
                          },
                          child: Text('Enviar'),
                          // icon: const Icon(Icons.add_circle),
                          // label: const Text("Agregar"),
                          style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all(const Size(
                                300, 50)), // Ajusta el ancho y alto deseado
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Aquí puedes agregar la lógica que se ejecutará cuando se presione el botón
                          },
                          child: const Text(
                              '¿Ya tienes una cuenta?'), // Texto que se mostrará en el botón
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
