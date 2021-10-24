// ignore_for_file: file_names

import 'package:data_source/data/MyData.dart';
import 'package:flutter/material.dart';

class MyDetailsPage extends StatelessWidget {
  final List<Map> books = MyData().data;

  final int theIndex;

  MyDetailsPage({
    Key? key,
    required int this.theIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Boo"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("$theIndex"),
              Text("${books[theIndex]["nameBengali"]}"),
              Text("${books[theIndex]["nameEnglish"]}"),
              Image.network(books[theIndex]["cover"]),
              Text("${books[theIndex]}"),
            ],
          ),
        ),
      ),
    );
  }
}
