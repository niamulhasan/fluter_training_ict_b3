// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyViewPage extends StatelessWidget {
  final ClipRRect chobi;
  final String title;

  //TODO: impliment params
  const MyViewPage(
      {Key? key, required ClipRRect this.chobi, required String this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Amra abar parameter shikhtesi"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            chobi,
            Text(
              title,
              style: TextStyle(fontSize: 28.0),
            )
          ],
        ),
      ),
    );
  }
}
