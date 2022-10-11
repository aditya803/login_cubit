import 'package:flutter/material.dart';
import 'package:login_cubit/Screens/RegisterPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
              child: TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: 'Email',
                ),
                // onSaved: (String? value) {
                //   // This optional block of code can be used to run
                //   // code when the user saves the form.
                // },
                validator: (String? value) {
                  return (value != null && value.contains('@'))
                      ? 'Do not use the @ char.'
                      : null;
                },
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 50),
              child: TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.password),
                  labelText: 'Password',
                ),
                onSaved: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (String? value) {
                  return (value != null && value.contains('@'))
                      ? 'Do not use the @ char.'
                      : null;
                },
              ),
            ),
            const SizedBox(height: 10),
            ButtonBar(
                alignment: MainAxisAlignment.center,
                overflowDirection: VerticalDirection.down,
                children: [
                  TextButton(onPressed: () {}, child: Text('Login')),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => RegisterPage()));
                      },
                      child: Text('New User?')),
                ])
          ],
        ),
      ),
    );
  }
}
