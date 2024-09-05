import 'package:flutter/material.dart';
import 'package:taask/main.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Sajib"),
            accountEmail: const Text("sajib@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(

              ),
            ),
            decoration: const BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    image: AssetImage('images/ bg.jpg'), fit: BoxFit.cover)),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyApp(),
                ),
              );
            },
          ),
          ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()))
              }
          ),
          ListTile(
            leading: const Icon(Icons.mail_outline_outlined),
            title: const Text('Message'),
            onTap: () => print('Message'),
          ),
          ListTile(
            leading: const Icon(Icons.auto_graph_rounded),
            title: const Text('Stats'),
            onTap: () => print('Stats'),
          ),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text('Share'),
            onTap: () => print('Share'),
          ),
          ListTile(
            leading: const Icon(Icons.notification_important),
            title: const Text('Notification'),
            onTap: () => print('Notification'),
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text('Settings'),
            onTap: () => print('Settings'),
          ),
          Divider(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Sign Out'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyApp(),
                ),
              );
            },
          ),

        ],
      ),
    );
  }
}
