import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key, this.myTitle, this.bgColor}) : super(key: key);
  final String? myTitle;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgColor!,
      elevation: 6.0,
      child: ListTile(
        leading: Icon(Icons.access_alarm_sharp),
        title: Text(myTitle!),
        subtitle: Text("I am the subtitle"),
        trailing: Icon(Icons.add),
      ),
    );
  }
}
