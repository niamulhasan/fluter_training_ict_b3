import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/MyListTile.dart';

void main() {
  runApp(MyListApp());
}

class MyListApp extends StatelessWidget {
  const MyListApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Welcome"),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView(
            children: [
              MyListTile(
                title: "Miraz",
                text_under_title: "Geography",
                background_color: Colors.teal,
                image: Image.network("https://picsum.photos/id/201/200"),
              ),
              MyListTile(
                title: "Shourav",
                text_under_title: "Management",
                background_color: Colors.redAccent,
                image: Image.network("https://picsum.photos/id/237/200"),
              ),
              MyListTile(
                title: "Thanvi",
                text_under_title: "Fakibuzz",
                background_color: Colors.blueAccent,
                image: Image.network("https://picsum.photos/id/243/200"),
              ),
              MyListTile(
                title: "Rubayet",
                text_under_title: "CSE",
                background_color: Colors.orangeAccent,
                image: Image.network("https://picsum.photos/id/231/200"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
