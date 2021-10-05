import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/MyGirdCard.dart';

void main() => runApp(MyGridView());

class MyGridView extends StatelessWidget {
  const MyGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Icon(
              Icons.face,
              size: 40.0,
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              MyGridCard(),
              MyGridCard(),
              MyGridCard(),
              MyGridCard(),
              MyGridCard(),
              MyGridCard(),
              MyGridCard(),
              MyGridCard(),
              MyGridCard(),
              MyGridCard(),
              MyGridCard(),
              MyGridCard(),
              MyGridCard(),
              MyGridCard(),
              MyGridCard(),
              MyGridCard(),
            ],
          ),
        ),
      ),
    );
  }
}
