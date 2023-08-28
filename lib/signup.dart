import 'package:flutter/material.dart';
import 'home.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(onPressed: () => Navigator.of(context).pop()),
          title: const Text('SignUp',),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'SignUp',
              style: TextStyle(
                fontSize: 30,
                color: Colors.teal,
                fontWeight: FontWeight.bold,
              ),
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
                            ? 'Please Enter email or phone.'
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
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter password',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {},
                      validator: (value) {
                        return value!.isEmpty ? 'Please Enter password.' : null;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        labelText: 'Confirm Password',
                        hintText: 'Confirm your password',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {},
                      validator: (value) {
                        return value!.isEmpty
                            ? 'Please confirm your password.'
                            : null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 50),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      onPressed: () {
                        // navigate to confirm account
                      },
                      color: Colors.teal,
                      textColor: Colors.white,
                      child: const Text('SignUp',
                          style: TextStyle(
                            fontSize: 20,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40,),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Already have account?',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10,),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Need help?',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20,),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'By continuing you automatically accept our terms & conditions, privancy policy and cookies policy',
                        style: TextStyle(fontSize: 12),
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
              MaterialPageRoute(builder: (context) => const Homepage()),
            );
          },
          child: const Icon(Icons.arrow_forward_ios_outlined),
        ),
      ),
    );
  }
}
