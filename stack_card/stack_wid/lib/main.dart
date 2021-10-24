import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'components/MyPlayerCard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: MyPlayerCard(
            player_image: Image.asset(
              "assets/images/human.png",
              width: 300.0,
            ),
            player_name: "Rubayet Ferdous",
            age: "24",
          ),
        ),
      ),
    );
  }
}
