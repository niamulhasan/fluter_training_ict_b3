import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/MyCard.dart';

void main() {
  runApp(MyLayout());
}

class MyLayout extends StatelessWidget {
  const MyLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My Layout"),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView(
            children: [
              MyCard(myTitle: "Rubayet's Card", bgColor: Colors.green),
              MyCard(myTitle: "Hridoy's Card", bgColor: Colors.purple),
              MyCard(myTitle: "Tazim's Card", bgColor: Colors.pink),
              MyCard(myTitle: "Miraz's Card", bgColor: Colors.cyan),
              MyCard(myTitle: "Shourav's Card", bgColor: Colors.lime),
            ],
          ),
        ),
      ),
    );
  }
}
