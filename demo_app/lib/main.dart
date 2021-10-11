import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(
    title: "Demo App", //shows when your app is minimize
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false, //for remove debug of flutter
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Demo App"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Card(
              child: Column(
            children: [
              Image.asset("assets/login-bg.png"),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Create an Account',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              new Container(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: new TextField(
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      border: OutlineInputBorder(),
                      labelText: 'Enter your username',
                      hintText: "Fareena",
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              new Container(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: new TextField(
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      border: OutlineInputBorder(),
                      labelText: 'Enter your Phone No.',
                      hintText: "XXXX-XXXXXXX",
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              new Container(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: new TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      border: OutlineInputBorder(),
                      labelText: 'Enter your email',
                      hintText: "abc@gmail.com",
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              new Container(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: new TextField(
                    obscureText: true, // inorder to not display the actual text
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(20),
                        border: OutlineInputBorder(),
                        labelText: 'Enter your password'),
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
      drawer: Drawer(
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
