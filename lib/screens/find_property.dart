// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imovatoapp/screens/login_page.dart';
import 'package:imovatoapp/utils/custom_drawer.dart';

class FindPropertyPage extends StatefulWidget {
  const FindPropertyPage({Key? key}) : super(key: key);

  @override
  State<FindPropertyPage> createState() => _FindPropertyPageState();
}

class _FindPropertyPageState extends State<FindPropertyPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Imovato",
                style: GoogleFonts.robotoMono(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          backgroundColor: Color.fromARGB(255, 33, 41, 57),
        ),
        body: Form(
          key: _formKey,
          child: Container(
            padding: EdgeInsets.all(30.0),
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Encontre o ímovel desejado',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoMono(
                      color: Colors.white,
                      fontSize: 18,
                    )),
                SizedBox(
                  height: 30.0,
                ),
                TextFormField(
                  onChanged: (text) {},
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    filled: true,
                    hintText: 'Tipo',
                    hintStyle: GoogleFonts.lato(
                      color: Color.fromARGB(255, 97, 97, 97).withOpacity(0.5),
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'Tipo inválido';
                    }
                  },
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  onChanged: (text) {},
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    filled: true,
                    hintText: 'Cidade',
                    hintStyle: GoogleFonts.lato(
                      color: Color.fromARGB(255, 97, 97, 97).withOpacity(0.5),
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'Cidade inválida';
                    }
                  },
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  onChanged: (text) {},
                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    filled: true,
                    hintText: 'Bairro',
                    hintStyle: GoogleFonts.lato(
                      color: Color.fromARGB(255, 97, 97, 97).withOpacity(0.5),
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'Bairro inválido';
                    }
                  },
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  onChanged: (text) {},
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    filled: true,
                    hintText: 'Número de Quartos',
                    hintStyle: GoogleFonts.lato(
                      color: Color.fromARGB(255, 97, 97, 97).withOpacity(0.5),
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'Número inválido';
                    }
                  },
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  onChanged: (text) {},
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    filled: true,
                    hintText: 'Valor',
                    hintStyle: GoogleFonts.lato(
                      color: Color.fromARGB(255, 97, 97, 97).withOpacity(0.5),
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'Valor inválido';
                    }
                  },
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  onChanged: (text) {},
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    filled: true,
                    hintText: 'Finalidade',
                    hintStyle: GoogleFonts.lato(
                      color: Color.fromARGB(255, 97, 97, 97).withOpacity(0.5),
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'Finalidade inválida';
                    }
                  },
                ),
                SizedBox(
                  height: 29.0,
                ),
                MaterialButton(
                  padding: EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                    } else {
                      return;
                    }
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
        backgroundColor: Color.fromARGB(255, 56, 65, 82),
      ),
    );
  }
}
