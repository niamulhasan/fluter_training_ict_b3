// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyPlayerCard extends StatelessWidget {
  final Image? player_image;
  final String? player_name;
  final String age;

  const MyPlayerCard({
    Key? key,
    Image? this.player_image,
    String? this.player_name,
    required String this.age,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 60.0),
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Container(
              height: 440.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                image: const DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage("assets/images/card_bg.png"),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 36.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            player_name ?? "Anindita Rahmawati",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              height: 1.4,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/flag.png",
                                  width: 24.0,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    "Indonesia",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 34.0),
                            child: Text(
                              "Biography",
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10.0,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffFFC2F9),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(20.0),
                                ),
                              ),
                              child: Image.asset(
                                "assets/images/mask.png",
                                width: 50.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 12,
                              bottom: 4.0,
                            ),
                            child: Text(
                              "Age: $age",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 4.0,
                            ),
                            child: Text(
                              "Birth: 24-02-1993",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 4.0,
                            ),
                            child: Text(
                              "Sex: Women",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 4.0,
                            ),
                            child: Text(
                              "WTA: 10",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          top: 20.0,
          child: player_image ??
              Image.asset(
                "assets/images/human.png",
                width: 300.0,
              ),
        )
      ],
    );
  }
}
