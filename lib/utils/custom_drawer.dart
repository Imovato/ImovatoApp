// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imovatoapp/controllers/login_controller.dart';
import 'package:imovatoapp/mock/user_mock.dart';
import 'package:imovatoapp/screens/find_property.dart';
import 'package:imovatoapp/screens/login_page.dart';
import 'package:imovatoapp/screens/reservations_page.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(top: 70.0, left: 20.0),
        children: [
          Text(
            'Olá, fulano',
            textAlign: TextAlign.start,
            style: GoogleFonts.robotoMono(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          GestureDetector(
            child: Text('Sair',
                style: GoogleFonts.robotoMono(
                  color: Colors.blue,
                  fontSize: 20,
                )),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => LoginPage())));
            },
          ),
          SizedBox(
            height: 100.0,
          ),
          GestureDetector(
            child: Container(
              child: Row(
                children: [
                  SvgPicture.asset('assets/homeIcon.svg'),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Início',
                    style: GoogleFonts.robotoMono(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
            // onTap: () {
            //   Navigator.push(context, MaterialPageRoute(builder: (context) => ));
            // },
          ),
          SizedBox(
            height: 50.0,
          ),
          GestureDetector(
            child: Container(
              child: Row(
                children: [
                  SvgPicture.asset('assets/reservationIcon.svg'),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Reservas',
                    style: GoogleFonts.robotoMono(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => ReservationPage())));
            },
          ),
          SizedBox(
            height: 50.0,
          ),
          GestureDetector(
            child: Container(
              child: Row(
                children: [
                  SvgPicture.asset('assets/locationIcon.svg'),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Encontre um imóvel',
                    style: GoogleFonts.robotoMono(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => FindPropertyPage())));
            },
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 56, 65, 82),
    );
  }
}
