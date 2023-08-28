import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // const MyApp({key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The salon'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  //respond to button press
                },
                child: const Text('Buy')),
            ElevatedButton(
                onPressed: () {
                  //respond
                },
                child: const Text('Sell')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //navigate to login
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );
        },
        child: const Icon(Icons.arrow_forward_ios_outlined),
      ),
    );
  }
}
