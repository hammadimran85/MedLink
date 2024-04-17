import 'package:flutter/material.dart';

class ProfilesScreen extends StatelessWidget {
  const ProfilesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profiles'),
      ),
      body: ListView(
        children: const <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Anni"),
            accountEmail: Text("****@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                "A",
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('My Profile'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Your Addresses'),
          ),
          ListTile(
            leading: Icon(Icons.group),
            title: Text('Invite Friends'),
          ),
          Divider(),
          ListTile(
            title: Text('Need Help?'),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About Us'),
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Terms and Conditions'),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Bookmarks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
