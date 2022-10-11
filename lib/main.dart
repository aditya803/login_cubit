import 'package:flutter/material.dart';

import 'Screens/HomePage.dart';
import 'Screens/RegisterPage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Cubit',
      home: HomePage(title: 'Cubit Login'),
      routes: {
        '/First' : (_) => const RegisterPage(),
      },
    );
  }
}
