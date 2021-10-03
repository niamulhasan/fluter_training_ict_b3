import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String title;
  final String text_under_title;
  final Color background_color;
  final Image image;

  const MyListTile(
      {Key? key,
      required String this.title,
      required String this.text_under_title,
      required Color this.background_color,
      required Image this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: background_color,
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: image,
        ),
        // ignore: prefer_const_constructors
        title: Text(title),
        subtitle: Text(text_under_title),
      ),
    );
  }
}
