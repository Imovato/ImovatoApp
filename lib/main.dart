// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:imovatoapp/login_page.dart';
import 'package:imovatoapp/signup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUpPage(), // troque aq para ver as telas
      debugShowCheckedModeBanner: false,
    );
  }
}
