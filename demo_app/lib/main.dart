import 'package:flutter/material.dart';
import 'package:demo_app/pages/register.dart';
import 'package:demo_app/pages/api-data.dart';

void main() {
  runApp(MaterialApp(
    title: "Demo App", //shows when your app is minimize
    home: ApiData(),
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false, //for remove debug of flutter
  ));
}
