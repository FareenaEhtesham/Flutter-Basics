import 'package:flutter/material.dart';
import 'package:demo_app/pages/register.dart';
import 'package:demo_app/pages/api-data.dart';
import 'package:demo_app/pages/contact.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(MaterialApp(
    title: "Demo App", //shows when your app is minimize
    home: Register(),
    theme: ThemeData(primarySwatch: Colors.blue, dividerColor: Colors.black),
    debugShowCheckedModeBanner: false, //for remove debug of flutter
    routes: {
      '/contact': (context) => const Contact(),
      '/api-data': (context) => const ApiData(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Demo App"),
      ),
    );
  }
}
