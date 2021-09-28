import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyRowColApp());
}

class MyRowColApp extends StatelessWidget {
  const MyRowColApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Row Col App"),
        ),
        body: Container(
          width: double.infinity,
          color: Colors.redAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Button 1"),
                ),
              ),
              SizedBox(
                width: 200.0,
                height: 160.0,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Button 1"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
