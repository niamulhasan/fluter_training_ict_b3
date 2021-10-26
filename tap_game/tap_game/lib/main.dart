import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int redPlayer = 20;
  int purplePlayer = 20;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        floatingActionButton: redPlayer > 39 || purplePlayer > 39
            ? FloatingActionButton(
                onPressed: () {
                  setState(() {
                    redPlayer = 20;
                    purplePlayer = 20;
                  });
                },
                child: Text("Reset"),
              )
            : Text(""),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Expanded(
                  flex: purplePlayer,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        purplePlayer += 1;
                        redPlayer -= 1;
                      });
                    },
                    onDoubleTap: () {
                      setState(() {
                        purplePlayer += 1;
                        redPlayer -= 1;
                      });
                    },
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.deepPurpleAccent,
                    ),
                  )),
              Expanded(
                flex: redPlayer,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      purplePlayer -= 1;
                      redPlayer += 1;
                    });
                  },
                  onDoubleTap: () {
                    setState(() {
                      purplePlayer -= 1;
                      redPlayer += 1;
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.redAccent,
                    child: redPlayer > 39
                        ? Center(
                            child: Text(
                              "Won!",
                              style: TextStyle(fontSize: 28.0),
                            ),
                          )
                        : Text(""),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
