import 'package:flutter/material.dart';

class myDrawer extends StatelessWidget {
  const myDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
        ],
      ),
    );
  }
}
