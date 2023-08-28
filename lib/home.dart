import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
          title: const Text(
            'Home',
          ),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,
          
        // ),
        bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: 'Home',
          ),
          // BottomNavigationBarItem(icon: Icon(Icons.message_rounded),
          // label: 'Messages',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_rounded),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ]),
      ),
    );
  }
}
