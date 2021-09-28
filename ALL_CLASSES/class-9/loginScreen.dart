import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyLoginView());
}

class MyLoginView extends StatelessWidget {
  const MyLoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xff171C3D), Color(0xff010310)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Container(
                width: double.infinity,
                child: Row(mainAxisSize: MainAxisSize.max, children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent, elevation: 0.0),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Color(0xff0A84FF),
                        ),
                        label: const Text(
                          "Back",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xff0A84FF),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: const Center(child: Text("Log in")),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  )
                ])),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body: Container(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 8.0),
                        child: Text(
                          "Login with",
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ElevatedButton.icon(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.white),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.access_alarm,
                            color: Colors.black,
                          ),
                          label: const Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Text(
                              "Login with Apple",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 20.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ElevatedButton.icon(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.white),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.access_alarm,
                            color: Colors.black,
                          ),
                          label: const Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Text(
                              "Login with Apple",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 20.0),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: Text("foo"),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.green,
                  child: Text("foo"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
