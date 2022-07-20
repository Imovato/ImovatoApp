// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_field

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imovatoapp/controllers/find_properties_controller.dart';
import 'package:imovatoapp/screens/property_detail.dart';
import 'package:imovatoapp/utils/custom_appbar.dart';
import 'package:imovatoapp/utils/custom_drawer.dart';

class PropertiesFound extends StatefulWidget {
  const PropertiesFound({Key? key, this.properties}) : super(key: key);

  final properties;

  @override
  State<PropertiesFound> createState() => _PropertiesFoundState();
}

class _PropertiesFoundState extends State<PropertiesFound> {
  final FindPropertiesController _controller = FindPropertiesController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          drawer: CustomDrawer(),
          appBar: CustomAppBar(),
          body: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(10),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: List<Widget>.generate(
              widget.properties.length,
              (index) => Container(
                  color: Color.fromARGB(255, 56, 65, 82),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PropertyDetail(
                                    propertyDetails: widget.properties[index],
                                  )));
                    },
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Center(
                            child: Image.asset(
                              widget.properties[index]['image'] ?? '',
                              width: 110,
                              height: 110,
                            ),
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          Text(
                            widget.properties[index]['cidade'] ?? '',
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          Text(
                            widget.properties[index]['bairro'] ?? '',
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            '${widget.properties[index]['valor']}',
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ]),
                  )),
            ),
          )),
    );
  }
}
