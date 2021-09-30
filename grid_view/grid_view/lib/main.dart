import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//components imports
import 'components/MyProduct.dart';

void main() => runApp(const MyGridApp());

class MyGridApp extends StatelessWidget {
  const MyGridApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: const Color(0xff22343C),
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.count(
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              crossAxisCount: 2,
              childAspectRatio: 0.6,
              children: const [
                MyProduct(),
                MyProduct(),
                MyProduct(),
                MyProduct(),
                MyProduct(),
                MyProduct(),
                MyProduct(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
