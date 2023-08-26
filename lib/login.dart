import 'package:flutter/material.dart';
// import './main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              'Please Login here.',
              style: TextStyle(fontFamily: 'Georgia', fontSize: 30),
              ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Username',
              ),
            ),
            const SizedBox(height: 15),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter password',
              ),
            ),
            const Text('forgot',
            textAlign: TextAlign.right,
            ),
            ButtonTheme(
              minWidth: 200.0,
              height: 100.0,
              
              child: ElevatedButton(
                onPressed: () {
                  //submit login
              
                },
                child: const Text('Login',
                style: TextStyle(fontSize: 20,),
                ),
              ),
            )
            
          ]),
        ),

      ),
      
    );
  }
}
