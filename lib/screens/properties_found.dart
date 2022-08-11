// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_field, prefer_typing_uninitialized_variables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imovatoapp/controllers/find_properties_controller.dart';
import 'package:imovatoapp/model/properties_model.dart';
import 'package:imovatoapp/screens/property_detail.dart';
import 'package:imovatoapp/utils/custom_appbar.dart';
import 'package:imovatoapp/utils/custom_drawer.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class PropertiesFound extends StatefulWidget {
  const PropertiesFound({Key? key, this.ap, this.casa, this.ter})
      : super(key: key);

  final ap;
  final casa;
  final ter;

  @override
  State<PropertiesFound> createState() => _PropertiesFoundState();
}

class _PropertiesFoundState extends State<PropertiesFound> {
  final FindPropertiesController _controller = FindPropertiesController();

  List images = [
    'assets/imagem-indisponivel-para-produtos-sem-imagem_15_5.jpg'
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return propriedades();
  }

  StatefulWidget propriedades() {
    if (widget.ap && widget.casa && widget.ter) {
      return Scaffold(
        appBar: CustomAppBar(),
        drawer: CustomDrawer(),
        body: FutureBuilder(
          future: _controller.listAllPropertiesApi(),
          builder: (context, AsyncSnapshot<List<Properties>> snapshot) {
            if (snapshot.hasData) {
              List<Properties>? propriedades = snapshot.data;
              return GridView.count(
                primary: false,
                padding: const EdgeInsets.all(10),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: propriedades!
                    .map((Properties post) => Column(
                          children: [
                            Container(
                              color: Color.fromARGB(255, 56, 65, 82),
                              child: GestureDetector(
                                onTap: (() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => PropertyDetail(
                                                propertyDetails: post,
                                              )));
                                }),
                                child: Column(
                                  children: [
                                    CarouselSlider.builder(
                                      options: CarouselOptions(
                                        height: 100.0,
                                        autoPlay: true,
                                      ),
                                      itemCount: images.length,
                                      itemBuilder:
                                          (context, itemIndex, realIndex) {
                                        return Container(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Image.asset(images[itemIndex]),
                                        );
                                      },
                                    ),
                                    Text(
                                      'Cidade: ${post.city}',
                                      style: GoogleFonts.lato(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Endereço: ${post.address}',
                                      style: GoogleFonts.lato(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Preço: R\$ ${post.price}',
                                      style: GoogleFonts.lato(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Estado: ${post.state}',
                                      style: GoogleFonts.lato(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ))
                    .toList(),
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      );
    } else if (widget.casa) {
      return Scaffold(
        appBar: CustomAppBar(),
        drawer: CustomDrawer(),
        body: FutureBuilder(
          future: _controller.listAllHouses(),
          builder: (context, AsyncSnapshot<List<Properties>> snapshot) {
            if (snapshot.hasData) {
              List<Properties>? propriedades = snapshot.data;
              return GridView.count(
                primary: false,
                padding: const EdgeInsets.all(10),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: propriedades!
                    .map((Properties post) => Column(
                          children: [
                            Container(
                              color: Color.fromARGB(255, 56, 65, 82),
                              child: GestureDetector(
                                onTap: (() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => PropertyDetail(
                                                propertyDetails: post,
                                              )));
                                }),
                                child: Column(
                                  children: [
                                    CarouselSlider.builder(
                                      options: CarouselOptions(
                                        height: 100.0,
                                        autoPlay: true,
                                      ),
                                      itemCount: images.length,
                                      itemBuilder:
                                          (context, itemIndex, realIndex) {
                                        return Container(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Image.asset(images[itemIndex]),
                                        );
                                      },
                                    ),
                                    Text(
                                      'Cidade: ${post.city}',
                                      style: GoogleFonts.lato(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Endereço: ${post.address}',
                                      style: GoogleFonts.lato(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Preço: R\$ ${post.price}',
                                      style: GoogleFonts.lato(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Estado: ${post.state}',
                                      style: GoogleFonts.lato(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ))
                    .toList(),
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      );
    } else if (widget.ter) {
      return Scaffold(
        appBar: CustomAppBar(),
        drawer: CustomDrawer(),
        body: FutureBuilder(
          future: _controller.listAllGrounds(),
          builder: (context, AsyncSnapshot<List<Properties>> snapshot) {
            if (snapshot.hasData) {
              List<Properties>? propriedades = snapshot.data;
              return GridView.count(
                primary: false,
                padding: const EdgeInsets.all(10),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: propriedades!
                    .map((Properties post) => Column(
                          children: [
                            Container(
                              color: Color.fromARGB(255, 56, 65, 82),
                              child: GestureDetector(
                                onTap: (() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => PropertyDetail(
                                                propertyDetails: post,
                                              )));
                                }),
                                child: Column(
                                  children: [
                                    CarouselSlider.builder(
                                      options: CarouselOptions(
                                        height: 100.0,
                                        autoPlay: true,
                                      ),
                                      itemCount: images.length,
                                      itemBuilder:
                                          (context, itemIndex, realIndex) {
                                        return Container(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Image.asset(images[itemIndex]),
                                        );
                                      },
                                    ),
                                    Text(
                                      'Cidade: ${post.city}',
                                      style: GoogleFonts.lato(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Endereço: ${post.address}',
                                      style: GoogleFonts.lato(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Preço: R\$ ${post.price}',
                                      style: GoogleFonts.lato(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Estado: ${post.state}',
                                      style: GoogleFonts.lato(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ))
                    .toList(),
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      );
    } else if (widget.ap) {
      return Scaffold(
        appBar: CustomAppBar(),
        drawer: CustomDrawer(),
        body: FutureBuilder(
          future: _controller.listAllApartments(),
          builder: (context, AsyncSnapshot<List<Properties>> snapshot) {
            if (snapshot.hasData) {
              List<Properties>? propriedades = snapshot.data;
              return GridView.count(
                primary: false,
                padding: const EdgeInsets.all(10),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: propriedades!
                    .map((Properties post) => Column(
                          children: [
                            Container(
                              color: Color.fromARGB(255, 56, 65, 82),
                              child: GestureDetector(
                                onTap: (() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => PropertyDetail(
                                                propertyDetails: post,
                                              )));
                                }),
                                child: Column(
                                  children: [
                                    CarouselSlider.builder(
                                      options: CarouselOptions(
                                        height: 100.0,
                                        autoPlay: true,
                                      ),
                                      itemCount: images.length,
                                      itemBuilder:
                                          (context, itemIndex, realIndex) {
                                        return Container(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Image.asset(images[itemIndex]),
                                        );
                                      },
                                    ),
                                    Text(
                                      'Cidade: ${post.city}',
                                      style: GoogleFonts.lato(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Endereço: ${post.address}',
                                      style: GoogleFonts.lato(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Preço: R\$ ${post.price}',
                                      style: GoogleFonts.lato(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Estado: ${post.state}',
                                      style: GoogleFonts.lato(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ))
                    .toList(),
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      );
    }

    return CircularProgressIndicator();
  }
}
