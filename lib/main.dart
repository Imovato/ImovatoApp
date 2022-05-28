import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromARGB(
          255,
          56,
          65,
          82,
        )),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                child: const Image(
                  width: 400,
                  image: AssetImage('assets/casa-chique1.png'),
                ),
              ),
              Container(
                child: const Image(
                  width: 400,
                  image: AssetImage('assets/casa-chique1.png'),
                ),
              ),
              Row(
                children: [
                  Column(
                    children: const [
                      Image(
                        width: 150,
                        image: AssetImage('assets/casa-chique1.png'),
                      ),
                      Image(
                        width: 150,
                        image: AssetImage('assets/casa-chique1.png'),
                      )
                    ],
                  ),
                  Column(
                    children: const [
                      Image(
                        width: 150,
                        image: AssetImage('assets/casa-chique1.png'),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
