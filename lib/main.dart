import 'package:flutter/material.dart';

import 'Screens/HomePage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Login Cubit',
      // routes: {
      //   '/' : (BuildContext context) => HomePage(title: 'Cubit Login')
      //  '/SignUp' : (BuildContext context) => RegisterPage(),
      // },
      home: HomePage(title: 'Cubit Login'),
    );
  }
}
