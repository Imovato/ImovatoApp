// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imovatoapp/utils/custom_checkbox.dart';
import 'package:imovatoapp/utils/custom_drawer.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
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
              children: [
                Text('Realizar Pagamento',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoMono(
                      color: Colors.white,
                      fontSize: 18,
                    )),
                SizedBox(
                  height: 30.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  onChanged: (text) {},
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
                      return 'Nome muito curto';
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
                    hintText: 'Número do cartão',
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
                  height: 30.0,
                ),
                Row(
                  children: [
                    Flexible(
                      // flex: 1,
                      child: TextFormField(
                        keyboardType: TextInputType.datetime,
                        onChanged: (text) {},
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Color.fromARGB(255, 255, 255, 255),
                          filled: true,
                          hintText: 'Data de vencimento',
                          hintStyle: GoogleFonts.lato(
                            color: Color.fromARGB(255, 97, 97, 97)
                                .withOpacity(0.5),
                            fontSize: 20,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        validator: (text) {
                          if (text!.isEmpty) {
                            return 'Data inválida';
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    Flexible(
                      // flex: 2,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        onChanged: (text) {},
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Color.fromARGB(255, 255, 255, 255),
                          filled: true,
                          hintText: 'CVV',
                          hintStyle: GoogleFonts.lato(
                            color: Color.fromARGB(255, 97, 97, 97)
                                .withOpacity(0.5),
                            fontSize: 20,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        validator: (text) {
                          if (text!.isEmpty) {
                            return 'Código inválido';
                          }
                        },
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  children: [
                    MyCustomCheckBox(),
                    Text('Lembrar este cartão',
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 20,
                        )),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                MaterialButton(
                  color: Color.fromARGB(255, 33, 41, 57),
                  disabledColor: Colors.white,
                  padding: EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                    } else {
                      return;
                    }
                  },
                  child: Text('PROSSEGUIR',
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 20,
                      )),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 56, 65, 82),
      ),
    );
  }
}
