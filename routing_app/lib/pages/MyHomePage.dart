import 'package:flutter/material.dart';

import 'MySecondPage.dart';
import 'MyThirdPage.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
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
                "Home Page",
                style: TextStyle(fontSize: 40.0),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => MySecondPage(),
                    ),
                  );
                },
                child: Text("Go to 2nd Page"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => MyThirdPage(),
                    ),
                  );
                },
                child: Text("Go to 3nd Page"),
              )
            ],
          ),
        ));
  }
}
