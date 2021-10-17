// ignore_for_file: file_names

import 'package:data_source/pages/MyDetailPage.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class MyListCard extends StatelessWidget {
  final String my_title;
  final Image my_image;
  final String my_sub;

  const MyListCard({
    Key? key,
    required String this.my_title,
    required Image this.my_image,
    required String this.my_sub,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => MyDetailPage(),
          ),
        );
      },
      child: Card(
        color: Colors.greenAccent.withOpacity(0.5),
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(50.0),
            child: my_image,
          ),
          title: Text(my_title),
          subtitle: Text(my_sub),
          trailing: Icon(LineIcons.plusCircle),
        ),
      ),
    );
  }
}
