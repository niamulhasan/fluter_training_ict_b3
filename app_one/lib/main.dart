import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Hello")),
        body: Center(
          child: getState(1),
        ),
      ),
    );
  }
}

Widget getState(int isLoading) {
  if (isLoading == 0) {
    return Text("Data loaded");
  } else {
    return CircularProgressIndicator();
  }
}
