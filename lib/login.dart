import 'package:flutter/material.dart';
import 'signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('User login'),
          centerTitle: true,
          leading: BackButton(onPressed: () => Navigator.of(context).pop()),
          backgroundColor: Colors.teal,
          
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Login',
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.teal,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Form(
                  child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        labelText: 'Email/Phone',
                        hintText: 'Enter email or phone',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {},
                      validator: (value) {
                        return value!.isEmpty
                            ? 'Please enter Email or phone'
                            : null;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter password',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {},
                      validator: (value) {
                        return value!.isEmpty ? 'Please enter password' : null;
                      },
                    ),
                  ),
                  const Text(
                    'forgot',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      onPressed: () {
                        // navigate to login
                      },
                      color: Colors.teal,
                      textColor: Colors.white,
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 20,
                        ), 
                      ),
                    ),
                  ),
                  
                ],
              )),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //navigate to signUp page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SignUpPage()),
            );
          },
          child: const Icon(Icons.arrow_forward_ios_outlined),
        ),
      ),
    );
  }
}
