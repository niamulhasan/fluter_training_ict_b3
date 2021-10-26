import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    count = count - 1;
                  });
                  print("Current value of count = $count");
                },
                child: Icon(Icons.remove),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    count = 0;
                  });
                  print("Current value of count = $count");
                },
                child: Text("Mess"),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    count = count + 1;
                  });
                  print("Current value of count = $count");
                },
                child: Icon(Icons.add),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('The button has been pushed these many times'),
                Text(
                  "$count",
                  style: TextStyle(
                    fontSize: 44.0,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
