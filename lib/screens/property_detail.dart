// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_field

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imovatoapp/screens/reservations_page.dart';
import 'package:imovatoapp/utils/custom_appbar.dart';
import 'package:imovatoapp/utils/custom_drawer.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class PropertyDetail extends StatefulWidget {
  const PropertyDetail({Key? key, this.propertyDetails}) : super(key: key);

  final propertyDetails;

  @override
  State<PropertyDetail> createState() => _PropertyDetailState();
}

class _PropertyDetailState extends State<PropertyDetail> {
  DateTime now = DateTime.now();

  DateTimeRange dateRange =
      DateTimeRange(start: DateTime.now(), end: DateTime.now());

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    final start = dateRange.start;
    final end = dateRange.end;
    final difference = dateRange.duration;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: CustomDrawer(),
        appBar: CustomAppBar(),
        body: Container(
          color: Color.fromARGB(255, 56, 65, 82),
          child: ListView(
            children: [
              SizedBox(
                height: 75.0,
              ),
              CarouselSlider.builder(
                options: CarouselOptions(
                  height: 200.0,
                  autoPlay: true,
                ),
                itemCount: widget.propertyDetails.length,
                itemBuilder: (context, itemIndex, realIndex) {
                  return Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      widget.propertyDetails['image'],
                    ),
                  );
                },
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Cidade: ${widget.propertyDetails['cidade']}, ${widget.propertyDetails['bairro']}',
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Valor: R\$ ${widget.propertyDetails['valor']}',
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Nome do proprietário: ${widget.propertyDetails['nomeProprietario']}',
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Telefone para contato: ${widget.propertyDetails['telefone']}',
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
              Form(
                key: _formKey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        child: Text(DateFormat('dd/MM/yyyy').format(start)),
                        onPressed: pickDateRange,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                        child: ElevatedButton(
                      child: Text(DateFormat('dd/MM/yyyy').format(end)),
                      onPressed: pickDateRange,
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              MaterialButton(
                color: Color.fromARGB(255, 33, 41, 57),
                disabledColor: Colors.white,
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReservationPage(),
                      ));
                },
                child: Text('Verificar disponibilidade',
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 20,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future pickDateRange() async {
    DateTimeRange? newDateRange = await showDateRangePicker(
      context: context,
      initialDateRange: dateRange,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    print(newDateRange);

    // if (newDateRange < DateTime.now()) {
    //   return;
    // }

    if (newDateRange == null) return; //press 'x'

    setState(() {
      dateRange = newDateRange; // press 'save'
    });
  }
}
