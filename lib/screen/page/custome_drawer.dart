import 'package:flutter/material.dart';

class CustomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: 60,
                  height: 60,
                  child: CircleAvatar(
                    backgroundColor: Colors.black38,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 6,
              ),
              Column(
                children: [
                  Text("abhishek"),
                  Text('level 1'),
                ],
              ),
              SizedBox(
                width: 90,
              ),
              Text("Rs 50"),
            ],
          ),
          Divider(),
          ListTile(
            title: Text('Home'),
            leading: Icon(Icons.home),
            onTap: () {},
          ),
          ListTile(
            title: Text('My Matches'),
            leading: Icon(Icons.assistant),
            onTap: () {},
          ),
          ListTile(
            title: Text('Feed'),
            leading: Icon(Icons.feedback),
            onTap: () {},
          ),
          ListTile(
            title: Text('Profile'),
            leading: Icon(Icons.person),
            onTap: () {},
          ),
          ListTile(
            title: Text('More'),
            leading: Icon(Icons.more),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            title: Text('Settings'),
            leading: Icon(Icons.settings),
            onTap: () {},
          ),
          ListTile(
            title: Text('Help & Feedback'),
            leading: Icon(Icons.help),
            onTap: () {},
          ),
          ListTile(
            title: Text('App Downloads'),
            leading: Icon(Icons.download_sharp),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
