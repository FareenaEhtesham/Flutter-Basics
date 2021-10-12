import 'package:flutter/material.dart';
import 'package:demo_app/pages/contact.dart';
import 'package:demo_app/Drawer.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

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
              ElevatedButton(
                child: const Text('Submit'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Contact()),
                  );
                },
              ),
            ],
          )),
        ),
      ),
      drawer: myDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
