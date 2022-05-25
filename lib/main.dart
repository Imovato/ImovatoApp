import 'package:flutter/material.dart';
import 'package:imovatoapp/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Imovato App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color.fromARGB(255, 33, 41, 57),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
