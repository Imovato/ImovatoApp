// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, body_might_complete_normally_nullable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imovatoapp/controllers/find_properties_controller.dart';
import 'package:imovatoapp/screens/properties_found.dart';
import 'package:imovatoapp/utils/custom_appbar.dart';
import 'package:imovatoapp/utils/custom_drawer.dart';

class FindPropertyPage extends StatefulWidget {
  const FindPropertyPage({Key? key}) : super(key: key);

  @override
  State<FindPropertyPage> createState() => _FindPropertyPageState();
}

class _FindPropertyPageState extends State<FindPropertyPage> {
  final FindPropertiesController _controller = FindPropertiesController();
  final _formKey = GlobalKey<FormState>();

  bool isSwitchedAps = false;
  bool isSwitchedCasa = false;
  bool isSwitchedTer = false;

  List<String> tipos = [
    'casa',
    'apartamento',
  ];

  List<String> finalidades = ['comprar', 'alugar'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            padding: EdgeInsets.all(30.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Encontre o ímovel desejado',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoMono(
                      color: Colors.white,
                      fontSize: 18,
                    )),
                SizedBox(
                  height: 35.0,
                ),
                // DropdownButtonFormField(
                //   onChanged: (value) {
                //     _controller.setTipo(value.toString());
                //   },
                //   items: tipos
                //       .map((e) => DropdownMenuItem<String>(
                //           value: e,
                //           child: Text(
                //             e,
                //             style: TextStyle(fontSize: 20),
                //           )))
                //       .toList(),
                //   decoration: InputDecoration(
                //     fillColor: Color.fromARGB(255, 255, 255, 255),
                //     filled: true,
                //     hintText: 'Tipo',
                //     hintStyle: GoogleFonts.lato(
                //       color: Color.fromARGB(255, 97, 97, 97).withOpacity(0.5),
                //       fontSize: 20,
                //     ),
                //     border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(15)),
                //   ),
                //   validator: (text) {
                //     if (text == null) {
                //       return 'Tipo inválido';
                //     }
                //   },
                // ),
                // SizedBox(
                //   height: 15.0,
                // ),
                // TextFormField(
                //   onChanged: (text) {
                //     _controller.setCidade(text);
                //   },
                //   decoration: InputDecoration(
                //     fillColor: Color.fromARGB(255, 255, 255, 255),
                //     filled: true,
                //     hintText: 'Cidade',
                //     hintStyle: GoogleFonts.lato(
                //       color: Color.fromARGB(255, 97, 97, 97).withOpacity(0.5),
                //       fontSize: 20,
                //     ),
                //     border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(15)),
                //   ),
                //   validator: (text) {
                //     if (text!.isEmpty) {
                //       return 'Cidade inválida';
                //     }
                //   },
                // ),
                // SizedBox(
                //   height: 15.0,
                // ),
                // TextFormField(
                //   onChanged: (text) {
                //     _controller.setBairro(text);
                //   },
                //   keyboardType: TextInputType.streetAddress,
                //   decoration: InputDecoration(
                //     fillColor: Color.fromARGB(255, 255, 255, 255),
                //     filled: true,
                //     hintText: 'Bairro',
                //     hintStyle: GoogleFonts.lato(
                //       color: Color.fromARGB(255, 97, 97, 97).withOpacity(0.5),
                //       fontSize: 20,
                //     ),
                //     border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(15)),
                //   ),
                //   validator: (text) {
                //     if (text!.isEmpty) {
                //       return 'Bairro inválido';
                //     }
                //   },
                // ),
                // SizedBox(
                //   height: 15.0,
                // ),
                // TextFormField(
                //   onChanged: (text) {
                //     _controller.setQuartos(text);
                //   },
                //   keyboardType: TextInputType.number,
                //   decoration: InputDecoration(
                //     fillColor: Color.fromARGB(255, 255, 255, 255),
                //     filled: true,
                //     hintText: 'Número de Quartos',
                //     hintStyle: GoogleFonts.lato(
                //       color: Color.fromARGB(255, 97, 97, 97).withOpacity(0.5),
                //       fontSize: 20,
                //     ),
                //     border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(15)),
                //   ),
                //   validator: (text) {
                //     if (text!.isEmpty) {
                //       return 'Número inválido';
                //     }
                //   },
                // ),
                // SizedBox(
                //   height: 15.0,
                // ),
                // TextFormField(
                //   onChanged: (text) {
                //     _controller.setValor(text);
                //   },
                //   keyboardType: TextInputType.number,
                //   decoration: InputDecoration(
                //     fillColor: Color.fromARGB(255, 255, 255, 255),
                //     filled: true,
                //     hintText: 'Valor',
                //     hintStyle: GoogleFonts.lato(
                //       color: Color.fromARGB(255, 97, 97, 97).withOpacity(0.5),
                //       fontSize: 20,
                //     ),
                //     border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(15)),
                //   ),
                //   validator: (text) {
                //     if (text!.isEmpty) {
                //       return 'Valor inválido';
                //     }
                //   },
                // ),
                // SizedBox(
                //   height: 15.0,
                // ),
                // DropdownButtonFormField(
                //   items: finalidades
                //       .map((e) => DropdownMenuItem<String>(
                //           value: e,
                //           child: Text(
                //             e,
                //             style: TextStyle(fontSize: 20),
                //           )))
                //       .toList(),
                //   onChanged: (value) {
                //     _controller.setFinalidade(value.toString());
                //   },
                //   decoration: InputDecoration(
                //     fillColor: Color.fromARGB(255, 255, 255, 255),
                //     filled: true,
                //     hintText: 'Finalidade',
                //     hintStyle: GoogleFonts.lato(
                //       color: Color.fromARGB(255, 97, 97, 97).withOpacity(0.5),
                //       fontSize: 20,
                //     ),
                //     border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(15)),
                //   ),
                //   validator: (text) {
                //     if (text == null) {
                //       return 'Finalidade inválida';
                //     }
                //   },
                // ),

                Row(
                  children: [
                    Switch(
                      value: isSwitchedAps,
                      onChanged: (value) {
                        setState(() {
                          isSwitchedAps = value;
                        });
                        print(isSwitchedAps);
                      },
                      activeColor: Colors.blue,
                    ),
                    Text('Apartamentos',
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 20,
                        )),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    Switch(
                      value: isSwitchedCasa,
                      onChanged: (value) {
                        setState(() {
                          isSwitchedCasa = value;
                        });
                        print(isSwitchedCasa);
                      },
                      activeColor: Colors.blue,
                    ),
                    Text('Casas',
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 20,
                        )),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    Switch(
                      value: isSwitchedTer,
                      onChanged: (value) {
                        setState(() {
                          isSwitchedTer = value;
                        });
                        print(isSwitchedTer);
                      },
                      activeColor: Colors.blue,
                    ),
                    Text('Terrenos',
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 20,
                        )),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                MaterialButton(
                  padding:
                      EdgeInsets.symmetric(horizontal: 135.0, vertical: 10.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  onPressed: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PropertiesFound(
                            ap: isSwitchedAps,
                            casa: isSwitchedCasa,
                            ter: isSwitchedTer,
                          ),
                        ));
                  },
                  color: Color.fromARGB(255, 33, 41, 57),
                  child: Text('Buscar',
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 20,
                      )),
                ),
              ],
            ),
            // mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 56, 65, 82),
    );
  }
}
