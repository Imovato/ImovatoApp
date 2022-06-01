// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String senha = '';

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Imovato",
                style: GoogleFonts.robotoMono(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
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
                Image.asset(
                  'assets/logo.png',
                  width: 130,
                  height: 130,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text('Entrar',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoMono(
                      color: Colors.white,
                      fontSize: 24,
                    )),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    filled: true,
                    hintText: 'Email',
                    hintStyle: GoogleFonts.lato(
                      color: Color.fromARGB(255, 97, 97, 97).withOpacity(0.5),
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  validator: (text) {
                    if (text!.isEmpty || !text.contains('@')) {
                      return 'Email inválido';
                    }
                  },
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  onChanged: (text) {
                    senha = text;
                  },
                  obscureText: true,
                  style: GoogleFonts.lato(
                    color: Color.fromARGB(255, 97, 97, 97).withOpacity(0.5),
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    filled: true,
                    hintText: 'Senha',
                    hintStyle: GoogleFonts.lato(
                      color: Color.fromARGB(255, 97, 97, 97).withOpacity(0.5),
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  validator: (text) {
                    if (text!.isEmpty || text.length < 6) {
                      return 'Senha inválido';
                    }
                  },
                ),
                SizedBox(
                  height: 50.0,
                ),
                RaisedButton(
                  padding: EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                    } else {
                      return;
                    }
                  },
                  color: Color.fromARGB(255, 245, 245, 245),
                  child: Text('LOGIN',
                      style: GoogleFonts.lato(
                        color: Color.fromARGB(255, 97, 97, 97).withOpacity(0.5),
                        fontSize: 20,
                      )),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Align(
                  alignment: Alignment.center,
                  child: FlatButton(
                    onPressed: () {},
                    child: Text('ou cadastre-se aqui',
                        style: GoogleFonts.robotoMono(
                          color: Colors.blue,
                          fontSize: 20,
                        )),
                  ),
                ),
                // Text('ou cadastre-se aqui',
                //     textAlign: TextAlign.center,
                //     style: GoogleFonts.robotoMono(
                //       color: Colors.blue,
                //       fontSize: 20,
                //     )),
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
