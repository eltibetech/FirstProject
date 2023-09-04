import 'package:flutter/material.dart';
import 'sectiondisplay.dart';

class MySection extends StatelessWidget {
  const MySection({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SectionDisplay(),
    );
  }
}