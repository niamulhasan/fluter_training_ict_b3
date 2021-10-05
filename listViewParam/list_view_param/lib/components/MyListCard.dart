// ignore: file_names
import 'package:flutter/material.dart';

class MyListCard extends StatelessWidget {
  final Widget card_header;
  final Color bg_color;
  const MyListCard(
      {Key? key,
      required Widget this.card_header,
      required Color this.bg_color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bg_color,
      child: ListTile(
          leading: Icon(Icons.add_alarm),
          title: card_header,
          subtitle: Text("This is the subtitle"),
          trailing: Icon(Icons.add)),
    );
  }
}
