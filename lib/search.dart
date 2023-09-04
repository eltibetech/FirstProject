import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius.circular(5) ),
            child: Center(
              child: TextField(decoration: InputDecoration(

                prefixIcon: const Icon(Icons.search,
                size: 20,),
                suffixIcon: IconButton(icon: const Icon(Icons.clear),
                onPressed: () {
                  // clear the search field
                },),
                hintText: 'Search ...',
                border: InputBorder.none
              )),
            ),
          ),
        ),
      ),
    );
  }
}