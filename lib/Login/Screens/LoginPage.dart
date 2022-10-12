import 'package:flutter/material.dart';
import 'package:flutter_cubit/flutter_cubit.dart';
import 'package:login_cubit/Login/Cubit_Logic/login_cubit.dart';
import 'package:login_cubit/Login/Cubit_Logic/login_state.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final mailController = TextEditingController();
  final passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return CubitBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Form(
          key: formkey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
                  child: TextFormField(
                    controller: mailController,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      labelText: 'Email',
                    ),
                    // onEditingComplete: () {
                    //   context
                    //       .cubit<LoginCubit>()
                    //       .emailAuth(mailController.text!);
                    // },
                    // validator: (value) {
                    //   if(value!.isEmpty){
                    //     return "Email is Empty";
                    //   }
                    //   if(value!.contains('@') && value!.contains('.com')){
                    //     return "Enter valid email";
                    //   }
                    //   else {
                    //     return null;
                    //   }
                    // },
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 50),
                  child: TextFormField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.password),
                      labelText: 'Password',
                    ),
                    // onEditingComplete: () {
                    //   context
                    //       .cubit<LoginCubit>()
                    //       .passwordAuth(passwordController.text!);
                    // },
                    // validator: (value) {
                    //   if(value!.isEmpty){
                    //     return "Password is Empty";
                    //   }else if(value.length < 8){
                    //     return "Password Should be 8 Characters";
                    //   }else {
                    //     return null;
                    //   }
                    // },
                  ),
                ),
                const SizedBox(height: 10),
                ButtonBar(
                    alignment: MainAxisAlignment.center,
                    overflowDirection: VerticalDirection.down,
                    children: [
                      TextButton(
                          onPressed: () {
                            //context.cubit<LoginCubit>().emailAuth(mailController.text!);
                            context.cubit<LoginCubit>().Auth(mailController.text!,passwordController.text!);
                            print('object');
                            if(state is AuthState){
                              Navigator.of(context).pushNamed('/Second');
                            }
                            else if(state is ErrorState){
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context)=>AlertDialog(
                                    title: const Text('ERROR'),
                                    content: Text('retry'),
                                    actions: <Widget>[
                                      TextButton(onPressed: (){
                                        Navigator.pop(context);
                                      }, child: const Text('retry'))
                                    ],
                                  )
                              );
                            }
                          },
                          child: Text('Login')),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/First');
                          },
                          child: Text('New User?')),
                    ])
              ],
            ),
          ),
        ),
      );
    });
  }
}
