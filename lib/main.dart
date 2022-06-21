// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:imovatoapp/screens/login_page.dart';
import 'package:imovatoapp/screens/signup_page.dart';
import 'screens/find_property.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FindPropertyPage(), // troque aq para ver as telas
      debugShowCheckedModeBanner: false,
    );
  }
}
