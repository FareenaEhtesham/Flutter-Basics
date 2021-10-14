import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiData extends StatefulWidget {
  const ApiData({Key? key}) : super(key: key);

  @override
  State<ApiData> createState() => _ApiDataState();
}

class _ApiDataState extends State<ApiData> {
  var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
  var data;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var response = await http.get(url);
    // print(response.body); the data comes in JSON
    data = jsonDecode(response.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Demo App"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16),
          child: Card(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(data[index]["title"]),
                  leading: Image.network(data[index]["url"]),
                );
              },
              itemCount: data.length,
            ),
          )),
    );
  }
}
