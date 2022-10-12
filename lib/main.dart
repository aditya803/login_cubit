import 'package:flutter/material.dart';
import 'package:flutter_cubit/flutter_cubit.dart';
import 'package:login_cubit/Login/Cubit_Logic/login_cubit.dart';
import 'package:login_cubit/Login/Screens/LoginPage.dart';
import 'package:login_cubit/Login/Screens/SecondPage.dart';
import 'package:login_cubit/Login/Screens/SignUpPage.dart';
import 'package:cubit/cubit.dart';
import '';

void main() {
  //Cubit.observer = MainCubitObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Cubit',
      home: CubitProvider(
          create: (context) => LoginCubit(),
          child: LoginPage(title: 'Cubit Login')),
      routes: {
        '/Zero': (_) => const LoginPage(title: 'Cubit Login'),
        '/First': (_) => const SignUpPage(),
        '/Second': (_) => const SecondPage(),
      },
    );
  }
}
