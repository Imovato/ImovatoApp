// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imovatoapp/controllers/find_properties_controller.dart';
import 'package:imovatoapp/utils/custom_appbar.dart';
import 'package:imovatoapp/utils/custom_drawer.dart';

class AddProperty extends StatefulWidget {
  const AddProperty({Key? key}) : super(key: key);

  @override
  State<AddProperty> createState() => _AddPropertyState();
}

class _AddPropertyState extends State<AddProperty> {
  final FindPropertiesController _controller = FindPropertiesController();
  final _formKey = GlobalKey<FormState>();

  List<String> tipos = [
    'Casa',
    'Apartamento',
    'Terrenos',
  ];
  String tipo = '';

  final snackbar = SnackBar(
    content: Text('Imóvel cadastrado'),
    duration: Duration(seconds: 3),
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
  );

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
                  children: [
                    Text('Informações do imóvel',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.robotoMono(
                          color: Colors.white,
                          fontSize: 18,
                        )),
                    SizedBox(
                      height: 30.0,
                    ),
                    DropdownButtonFormField(
                      onChanged: (value) {
                        setState(() {
                          tipo = value.toString();
                        });
                      },
                      items: tipos
                          .map((e) => DropdownMenuItem<String>(
                              value: e,
                              child: Text(
                                e,
                                style: TextStyle(fontSize: 20),
                              )))
                          .toList(),
                      decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        filled: true,
                        hintText: 'Tipo',
                        hintStyle: GoogleFonts.lato(
                          color:
                              Color.fromARGB(255, 97, 97, 97).withOpacity(0.5),
                          fontSize: 20,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      validator: (text) {
                        if (text == null) {
                          return 'Tipo inválido';
                        }
                      },
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
//
//
                    tipo == 'Apartamento'
                        ? Column(
                            children: [
                              TextFormField(
                                onChanged: (value) {
                                  _controller.setArea(value);
                                },
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Área',
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
                                    return 'Área inválida';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  _controller.setName(value);
                                },
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Nome',
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
                                    return 'Nome inválido';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  _controller.setNeighborhood(value);
                                },
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Vizinhanca',
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
                                    return 'Vizinhanca inválido';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  _controller.setCity(value);
                                },
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Cidade',
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
                                    return 'Cidade inválida';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  _controller.setDescription(value);
                                },
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Descricao',
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
                                    return 'Descricao inválida';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  _controller.setAddress(value);
                                },
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Endereco',
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
                                    return 'Endereco inválido';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  _controller.setState(value);
                                },
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Estado',
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
                                    return 'Estado inválido';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  _controller.setPrice(value);
                                },
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Preco',
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
                                    return 'Preco inválido';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  _controller.setNumber(value);
                                },
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Numero',
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
                                    return 'Numero inválido';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  _controller.setBlock(value);
                                },
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Bloco',
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
                                    return 'Bloco inválido';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  _controller.setRooms(value);
                                },
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Quartos',
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
                                    return 'Quartos inválido';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                              MaterialButton(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 135.0, vertical: 10.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(15.0))),
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    _controller.createApartement();
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackbar);
                                    Timer(
                                        Duration(seconds: 3),
                                        () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: ((context) =>
                                                    AddProperty()))));
                                  }
                                },
                                color: Color.fromARGB(255, 33, 41, 57),
                                child: Text('Adicionar',
                                    style: GoogleFonts.lato(
                                      color: Colors.white,
                                      fontSize: 18,
                                    )),
                              ),
                            ],
                          )
                        : Column(),
//
//
                    tipo == 'Casa'
                        ? Column(
                            children: [
                              TextFormField(
                                onChanged: (value) {
                                  _controller.setArea(value);
                                },
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Área',
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
                                    return 'Área inválida';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  _controller.setName(value);
                                },
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Nome',
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
                                    return 'Nome inválido';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  _controller.setNeighborhood(value);
                                },
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Vizinhanca',
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
                                    return 'Vizinhanca inválido';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  _controller.setCity(value);
                                },
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Cidade',
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
                                    return 'Cidade inválida';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  _controller.setDescription(value);
                                },
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Descricao',
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
                                    return 'Descricao inválida';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  _controller.setAddress(value);
                                },
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Endereco',
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
                                    return 'Endereco inválido';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  _controller.setState(value);
                                },
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Estado',
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
                                    return 'Estado inválido';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  _controller.setPrice(value);
                                },
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Preco',
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
                                    return 'Preco inválido';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  _controller.setNumber(value);
                                },
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Numero',
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
                                    return 'Numero inválido';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  _controller.setRooms(value);
                                },
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Quartos',
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
                                    return 'Quartos inválido';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                              MaterialButton(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 135.0, vertical: 10.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(15.0))),
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    _controller.createHouse();
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackbar);
                                    Timer(
                                        Duration(seconds: 3),
                                        () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: ((context) =>
                                                    AddProperty()))));
                                  }
                                },
                                color: Color.fromARGB(255, 33, 41, 57),
                                child: Text('Adicionar',
                                    style: GoogleFonts.lato(
                                      color: Colors.white,
                                      fontSize: 18,
                                    )),
                              ),
                            ],
                          )
                        : Column(),
//
//
                    tipo == 'Terrenos'
                        ? Column(
                            children: [
                              TextFormField(
                                onChanged: (value) {
                                  _controller.setArea(value);
                                },
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Área',
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
                                    return 'Área inválida';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  _controller.setName(value);
                                },
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Nome',
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
                                    return 'Nome inválido';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  _controller.setNeighborhood(value);
                                },
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Vizinhanca',
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
                                    return 'Vizinhanca inválido';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  _controller.setCity(value);
                                },
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Cidade',
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
                                    return 'Cidade inválida';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  _controller.setDescription(value);
                                },
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Descricao',
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
                                    return 'Descricao inválida';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  _controller.setAddress(value);
                                },
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Endereco',
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
                                    return 'Endereco inválido';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  _controller.setState(value);
                                },
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Estado',
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
                                    return 'Estado inválido';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  _controller.setPrice(value);
                                },
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Preco',
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
                                    return 'Preco inválido';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  _controller.setNumber(value);
                                },
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Numero',
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
                                    return 'Numero inválido';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextFormField(
                                onChanged: (value) {
                                  _controller.setBlock(value);
                                },
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Bloco',
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
                                    return 'Bloco inválido';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                              MaterialButton(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 135.0, vertical: 10.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(15.0))),
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    _controller.createGround();
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackbar);
                                    Timer(
                                        Duration(seconds: 3),
                                        () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: ((context) =>
                                                    AddProperty()))));
                                  }
                                },
                                color: Color.fromARGB(255, 33, 41, 57),
                                child: Text('Adicionar',
                                    style: GoogleFonts.lato(
                                      color: Colors.white,
                                      fontSize: 18,
                                    )),
                              ),
                            ],
                          )
                        : Column(),
                  ],
                ),
              ))),
      backgroundColor: Color.fromARGB(255, 56, 65, 82),
    );
  }
}
