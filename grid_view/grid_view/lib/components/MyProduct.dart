import 'package:flutter/material.dart';

class MyProduct extends StatelessWidget {
  const MyProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 12,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                "https://picsum.photos/600",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Belt Suit Blazer",
                    style: TextStyle(color: Color(0xff96A7AF)),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "\$120",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
