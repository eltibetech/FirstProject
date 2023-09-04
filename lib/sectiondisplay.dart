import 'package:flutter/material.dart';

class SectionDisplay extends StatelessWidget {
  const SectionDisplay ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      // drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
            child:  Text(
              'Categories',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.amberAccent, fontSize: 25),
            )),
            Container(
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('home'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: const Text('Cart'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text('contact'),
            onTap: () => {},
          )
          ],
        ),
      // )
    );
  }
}