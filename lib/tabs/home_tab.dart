// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  static const lista = [];

  @override
  Widget build(BuildContext context) {
    Widget _buildBodyBack() => Container(
        decoration: BoxDecoration(
            // ignore: prefer_const_literals_to_create_immutables
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 33, 41, 57),
          Color.fromARGB(255, 56, 65, 82),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: Image(
          image: AssetImage('assets/casa-chique1.png'),
          width: 500,
          height: 500,
        ));

    return Stack(
      children: <Widget>[
        _buildBodyBack(),
        CustomScrollView(
          // ignore: prefer_const_literals_to_create_immutables
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              snap: true,
              backgroundColor: Colors.red,
              elevation: 0.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Novidades'),
                centerTitle: true,
              ),
            ),
            // Center(child: Image(image: AssetImage('assets/casa-chique1.png')))
            // Image(image: AssetImage('assets/casa-chique1.png'))
          ],
        )
      ],
    );
  }
}
