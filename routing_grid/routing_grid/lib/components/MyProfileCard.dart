import 'package:flutter/material.dart';
import 'package:routing_grid/pages/MyViewPage.dart';

class MyProfileCard extends StatelessWidget {
  final String name;
  final ClipRRect image;

  const MyProfileCard({
    Key? key,
    required String this.name,
    required ClipRRect this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => MyViewPage(chobi: image, title: name),
          ),
        );
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            image,
            Text(
              name,
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
