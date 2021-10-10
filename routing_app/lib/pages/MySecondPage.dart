import 'package:flutter/material.dart';
import 'package:routing_app/pages/MyHomePage.dart';
import 'package:routing_app/pages/MyThirdPage.dart';

class MySecondPage extends StatelessWidget {
  const MySecondPage({
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
                "Second Page",
                style: TextStyle(fontSize: 40.0),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Back"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MyThirdPage()));
                },
                child: Text("Go to 3rd Page"),
              )
            ],
          ),
        ));
  }
}
