// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imovatoapp/utils/custom_appbar.dart';
import 'package:imovatoapp/utils/custom_drawer.dart';

class ReservationPage extends StatefulWidget {
  const ReservationPage({Key? key}) : super(key: key);

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

List propertiesList = [
  {
    "idReservation": 1,
    "idClient": 1,
    "status": 1,
    "property": {
      "image": "assets/casa1.jpg",
      "endereco": "Rua dos bobos, 0",
      "valor": '650,00'
    }
  },
  // {
  //   "idReservation": 1,
  //   "idClient": 1,
  //   "status": 2,
  //   "property": {
  //     "image": "assets/casa1.jpg",
  //     "endereco": "Rua dos bobos, 0",
  //     "valor": '650,00'
  //   }
  // },
  // {
  //   "Image": "assets/casa3.jpg",
  //   "Endereço": "Rua dos bobos, 2",
  //   "Valor": '650,00'
  // },
  // {
  //   "Image": "assets/casa4.jpg",
  //   "Endereço": "Rua dos bobos, 3",
  //   "Valor": '650,00'
  // },
  // {
  //   "Image": "assets/casa1.jpg",
  //   "Endereço": "Rua dos bobos, 4",
  //   "Valor": '650,00'
  // },
  // {
  //   "Image": "assets/casa2.jpg",
  //   "Endereço": "Rua dos bobos, 5",
  //   "Valor": '650,00'
  // },
  // {
  //   "Image": "assets/casa3.jpg",
  //   "Endereço": "Rua dos bobos, 6",
  //   "Valor": '650,00'
  // },
  // {
  //   "Image": "assets/teste.jpg",
  //   "Endereço": "Rua dos bobos, 7",
  //   "Valor": '650,00'
  // },
];

class _ReservationPageState extends State<ReservationPage> {
  @override
  Widget build(BuildContext context) {
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
                  height: 50.0,
                ),
                Text(
                  'Reservas',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Card(
                    color: Colors.white,
                    child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List<Widget>.generate(
                            propertiesList.length,
                            (index) => Container(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Código da reserva: ${propertiesList[index]['idReservation']}',
                                      style: GoogleFonts.lato(
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      'Endereço: ${propertiesList[index]['property']['endereco']}',
                                      style: GoogleFonts.lato(
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      'Valor: ${propertiesList[index]['property']['valor']}',
                                      style: GoogleFonts.lato(
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4.0,
                                    ),
                                    Row(
                                      children: [
                                        _buildCircle(
                                            '1',
                                            'Verificando disponibilidade',
                                            1,
                                            1),
                                        Container(
                                          height: 1.0,
                                          width: 20.0,
                                          color: Colors.grey,
                                        ),
                                        _buildCircle(
                                            '2', 'Realizar Pagamento', 2, 2),
                                        Container(
                                          height: 1.0,
                                          width: 20.0,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(
                                          width: 18.0,
                                        ),
                                        _buildCircle('3', 'Pronto', 3, 3)
                                      ],
                                    ),
                                  ]),
                            ),
                          ),
                        )))
              ],
            )),
      ),
    );
  }

  Widget _buildCircle(
      String title, String subtitle, int status, int thisStatus) {
    Color? backColor;
    Widget child;

    if (status < thisStatus) {
      backColor = Colors.grey[500];
      child = Text(
        title,
        style: TextStyle(color: Colors.black, fontSize: 20),
      );
    } else if (status == thisStatus) {
      backColor = Colors.blue;
      child = Stack(
        alignment: Alignment.center,
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          )
        ],
      );
    } else {
      backColor = Colors.green;
      child = Icon(Icons.check);
    }

    return Column(
      children: [
        CircleAvatar(
          radius: 20.0,
          backgroundColor: backColor,
          child: child,
        ),
        Text(
          subtitle,
          style: GoogleFonts.lato(
            color: Colors.black,
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
