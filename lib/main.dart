import 'package:flutter/material.dart';
import 'package:login_cubit/Login/Screens/LoginPage.dart';
import 'package:login_cubit/Login/Screens/SignUpPage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Cubit',
      home: LoginPage(title: 'Cubit Login'),
      routes: {
        '/First' : (_) => const SignUpPage(),
      },
    );
  }
}
