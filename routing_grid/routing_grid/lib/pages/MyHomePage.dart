// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../components/MyProfileCard.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            MyProfileCard(
              name: "John Doe",
              image: ClipRRect(
                borderRadius: BorderRadius.circular(90.0),
                child: Image.network("https://i.pravatar.cc/150?img=3"),
              ),
            ),
            MyProfileCard(
              name: "Akkas Ali",
              image: ClipRRect(
                borderRadius: BorderRadius.circular(90.0),
                child: Image.network("https://i.pravatar.cc/150?img=4"),
              ),
            ),
            MyProfileCard(
              name: "Rahim Mia",
              image: ClipRRect(
                borderRadius: BorderRadius.circular(90.0),
                child: Image.network("https://i.pravatar.cc/150?img=7"),
              ),
            ),
            MyProfileCard(
              name: "Kuddus Ali",
              image: ClipRRect(
                borderRadius: BorderRadius.circular(90.0),
                child: Image.network("https://i.pravatar.cc/150?img=30"),
              ),
            ),
            MyProfileCard(
              name: "Shokhina Bibi",
              image: ClipRRect(
                borderRadius: BorderRadius.circular(90.0),
                child: Image.network("https://i.pravatar.cc/150?img=12"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
