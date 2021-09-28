import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MySplashScreen());
}

class MySplashScreen extends StatelessWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color(0xff221F1E),
          child: Column(
            children: [
              Image.asset(
                "assets/images/splash_img_3.png",
                width: 400.0,
              ),
              const Text(
                "Achive Higher Goals",
                style: TextStyle(fontSize: 36.0, color: Color(0xffffffff)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                child: Text(
                  "By boosting your productivity we help you achiving your higher goals",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, color: Color(0xffffffff)),
                ),
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Get Started"),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xffEF895F)))
            ],
          ),
        ),
      ),
    );
  }
}
