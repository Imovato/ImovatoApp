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
              backgroundColor: Colors.red,
            ),
            body: SafeArea(
              child: Column(

                children: [
                  Container(
                    color: Colors.green,
                    child: const Image(
                        width: 200,
                        image: AssetImage('assets/casa-chique1.png'
                        )),
      
                  ), 
                  Text('ola mundo')
                  
                ],
                // child: Center(
                //     child: Image(
                //   image: AssetImage('assets/casa-chique1.png'),
                // )),
              ),

            )

          //     Image(
          //   image: AssetImage('assets/casa-chique1.png'),
          // ),

          // ignore: prefer_const_literals_to_create_immutables
          //     gradient: LinearGradient(colors: [
          //   Color.fromAR9GB(255, 33, 41, 57),
          //   Color.fromARGB(255, 56, 65, 82),
          // ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          // child: Image(
          //   image: AssetImage('assets/casa-chique1.png'),
          //   width: 500,
          //   height: 500,
        ));

    // return Stack(
    //   children: <Widget>[
    //     _buildBodyBack(),
    //     CustomScrollView(
    //       // ignore: prefer_const_literals_to_create_immutables
    //       slivers: <Widget>[
    //         SliverAppBar(
    //           floating: true,
    //           snap: true,
    //           backgroundColor: Colors.red,
    //           elevation: 0.0,
    //           flexibleSpace: FlexibleSpaceBar(
    //             title: Text('Novidades'),
    //             centerTitle: true,
    //           ),
    //         ),
    //
    //         // Center(child: Image(image: AssetImage('assets/casa-chique1.png')))
    //         // Image(image: AssetImage('assets/casa-chique1.png'))
    //       ],
    //     )
    //   ],
    // );
  }
}

