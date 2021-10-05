import 'package:flutter/material.dart';

class MyGridCard extends StatelessWidget {
  const MyGridCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                gradient: LinearGradient(colors: [
                  Color(0xffF395BA),
                  Color(0xffFED182),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset("assets/images/s_media.png"),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              width: double.infinity,
              child: Text("foo"),
            ),
          )
        ],
      ),
    );
  }
}
