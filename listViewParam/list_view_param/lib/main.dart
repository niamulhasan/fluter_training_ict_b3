import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/MyListCard.dart';

void main() {
  runApp(MyParamListView());
}

class MyParamListView extends StatelessWidget {
  const MyParamListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("The Param List App"),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView(
            children: const [
              MyListCard(
                  card_header: Text("Title text for card 1"),
                  bg_color: Colors.redAccent),
              MyListCard(
                card_header: Text("Title text two"),
                bg_color: Colors.blueAccent,
              ),
              MyListCard(
                  card_header: Icon(Icons.ac_unit), bg_color: Color(0xff22343C))
            ],
          ),
        ),
      ),
    );
  }
}
