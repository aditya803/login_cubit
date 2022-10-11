import 'package:flutter/material.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50,vertical: 0),
              child: TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: 'Email',
                ),
                validator: (String?value){
                  return (value != null && value.contains('@'))
                      ? 'Enter valid email address'
                      : null;
                },
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50,vertical: 0),
              child: TextFormField(
                decoration: const InputDecoration(
                    icon: Icon(Icons.password),
                    labelText: 'Password'
                ),
                validator: (String?value){
                  return (value != null && value.contains('@'))
                      ? 'enter valid password'
                      : null;
                },
              ),
            ),
            SizedBox(height: 10),
            TextButton(
                onPressed: (){},
                child: Text('Register')
            )
          ],
        ),
      ),
    );
  }
}
