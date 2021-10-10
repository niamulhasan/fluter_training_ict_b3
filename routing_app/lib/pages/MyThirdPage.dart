import 'package:flutter/material.dart';
import 'MyHomePage.dart';

class MyThirdPage extends StatelessWidget {
  const MyThirdPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Third Page",
                style: TextStyle(fontSize: 40.0),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Back"),
              )
            ],
          ),
        ));
  }
}
