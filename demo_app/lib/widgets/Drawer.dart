import 'package:demo_app/pages/api-data.dart';
import 'package:demo_app/pages/contact.dart';
import 'package:demo_app/pages/profile.dart';
import 'package:demo_app/pages/register.dart';
import 'package:demo_app/pages/about.dart';
import 'package:flutter/material.dart';

class myDrawer extends StatelessWidget {
  const myDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        child: ListView(
          children: [
            // DrawerHeader(
            //     child: Text("Hi, I am Drawer",
            //         style: TextStyle(color: Colors.white)),
            //     decoration: BoxDecoration(color: Colors.indigo)
            //     ),

            UserAccountsDrawerHeader(
                accountName: Text("Demo Account"),
                accountEmail: Text("accountEmail"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80"),
                )),

            ListTile(
              leading: Icon(Icons.person),
              title: Text("My Account"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("My Email"),
              subtitle: Text("demo@yahoo.com"),
              trailing: Icon(Icons.send),
            ),

            ListTile(
              leading: Icon(Icons.person_add),
              title: Text("Register"),
              hoverColor: Colors.blue,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Register()),
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.contact_page),
              title: Text("Contact"),
              hoverColor: Colors.blue,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Contact()),
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.book),
              title: Text("Api Data"),
              hoverColor: Colors.blue,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ApiData()),
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.person),
              title: Text("Image Picker"),
              hoverColor: Colors.blue,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => About()),
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              hoverColor: Colors.blue,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
