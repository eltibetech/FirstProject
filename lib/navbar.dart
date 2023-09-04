import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Padding(
              padding: EdgeInsets.only(top:25.0),
              child: Text(
                'Mobile Salon',
                
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ), 
            accountEmail: Text(''),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                // image details/styles
              ),
            ),),
            const ListTile(
            title: Text(
              'CATEGORIES',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
            ),
            
          ),
            ListTile(
                title: const Text('Ladies Hair',
                style: TextStyle(fontSize: 20),),
                trailing: const Icon(Icons.arrow_forward,
                size: 24),
                onTap: () => {},
              ),
              ListTile(
            title: const Text(
              "Men's Hair",
              style: TextStyle(fontSize: 20),
            ),
            trailing: const Icon(Icons.arrow_forward, size: 24),
            onTap: () => {},
          ),
          ListTile(
            title: const Text(
              'Manicure & Pedicure',
              style: TextStyle(fontSize: 20),
            ),
            trailing: const Icon(Icons.arrow_forward, size: 24),
            onTap: () => {},
          ),
          ListTile(
            title: const Text(
              'Hair Pieces',
              style: TextStyle(fontSize: 20),
            ),
            trailing: const Icon(Icons.arrow_forward, size: 24),
            onTap: () => {},
          ),
              
            
        ],
      ),
    );
  }
}