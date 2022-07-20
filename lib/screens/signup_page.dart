// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imovatoapp/controllers/signup_controller.dart';
import 'package:imovatoapp/screens/login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final SignUpController _controller = SignUpController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                  height: 90,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text('Crie uma conta',
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
                    _controller.setNomeCompleto(text);
                  },
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    filled: true,
                    hintText: 'Nome Completo',
                    hintStyle: GoogleFonts.lato(
                      color: Color.fromARGB(255, 97, 97, 97).withOpacity(0.5),
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'Nome inválido';
                    }
                  },
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  onChanged: (text) {
                    _controller.setEndereco(text);
                  },
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    filled: true,
                    hintText: 'Endereço',
                    hintStyle: GoogleFonts.lato(
                      color: Color.fromARGB(255, 97, 97, 97).withOpacity(0.5),
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  validator: (text) {
                    if (text!.isEmpty || text.length < 6) {
                      return 'Endereço inválido';
                    }
                  },
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  onChanged: (text) {
                    _controller.setEmail(text);
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
                    _controller.setSenha(text);
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
                  height: 29.0,
                ),
                MaterialButton(
                  padding: EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _controller.createUser();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => LoginPage())));
                      return;
                    } else {
                      return;
                    }
                  },
                  color: Color.fromARGB(255, 33, 41, 57),
                  child: Text('Criar Conta',
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
