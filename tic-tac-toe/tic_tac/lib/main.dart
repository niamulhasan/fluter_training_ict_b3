import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int b11 = 0;
  int b12 = 0;
  int b13 = 0;

  int b21 = 0;
  int b22 = 0;
  int b23 = 0;

  int b31 = 0;
  int b32 = 0;
  int b33 = 0;

  reset() {
    b11 = 0;
    b12 = 0;
    b13 = 0;

    b21 = 0;
    b22 = 0;
    b23 = 0;

    b31 = 0;
    b32 = 0;
    b33 = 0;
  }

  bool turn = false;

  int won = 0;

  //won conditions
  checkWonCondition() {
    // horizontal check
    int resA = b11 * b12 * b13;
    if (resA == 1) {
      won = 1;
    } else if (resA == 8) {
      won = 2;
    }

    int resB = b21 * b22 * b23;
    if (resB == 1) {
      won = 1;
    } else if (resB == 8) {
      won = 2;
    }

    int resC = b31 * b32 * b33;
    if (resC == 1) {
      won = 1;
    } else if (resC == 8) {
      won = 2;
    }

    //vertical check
    int resX = b11 * b21 * b31;
    if (resX == 1) {
      won = 1;
    } else if (resX == 8) {
      won = 2;
    }

    int resY = b12 * b22 * b32;
    if (resY == 1) {
      won = 1;
    } else if (resY == 8) {
      won = 2;
    }

    int resZ = b13 * b23 * b33;
    if (resZ == 1) {
      won = 1;
    } else if (resZ == 8) {
      won = 2;
    }

    //cross check
    int resP = b11 * b22 * b33;
    if (resP == 1) {
      won = 1;
    } else if (resP == 8) {
      won = 2;
    }

    int resQ = b13 * b22 * b31;
    if (resQ == 1) {
      won = 1;
    } else if (resQ == 8) {
      won = 2;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tic Tac Toe'),
        ),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Text(
                  //   won == 0
                  //       ? ""
                  //       : won == 1
                  //           ? "Cross Won!!"
                  //           : "Circle Won!!",
                  //   style: TextStyle(
                  //       fontSize: 50.0,
                  //       fontWeight: FontWeight.bold,
                  //       color: Colors.green),
                  // ),
                  Text(
                    "Turn for: ${turn ? "Cross" : "Circle"}",
                    style: TextStyle(fontSize: 24.0),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            if (b11 == 0) {
                              if (turn) {
                                setState(() {
                                  b11 = 1;
                                  turn = !turn;
                                  checkWonCondition();
                                });
                              } else {
                                setState(() {
                                  b11 = 2;
                                  turn = !turn;
                                  checkWonCondition();
                                });
                              }
                            }
                          },
                          child: Container(
                            height: 130.0,
                            decoration: MyBoxBorder(),
                            child: b11 == 0
                                ? Text("")
                                : b11 == 1
                                    ? MyCrossIcon()
                                    : MyCircleIcon(),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            if (b12 == 0) {
                              if (turn) {
                                setState(() {
                                  b12 = 1;
                                  turn = !turn;
                                  checkWonCondition();
                                });
                              } else {
                                setState(() {
                                  b12 = 2;
                                  turn = !turn;
                                  checkWonCondition();
                                });
                              }
                            }
                          },
                          child: Container(
                            height: 130.0,
                            decoration: MyBoxBorder(),
                            child: b12 == 0
                                ? Text("")
                                : b12 == 1
                                    ? MyCrossIcon()
                                    : MyCircleIcon(),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            if (b13 == 0) {
                              if (turn) {
                                setState(() {
                                  b13 = 1;
                                  turn = !turn;
                                  checkWonCondition();
                                });
                              } else {
                                setState(() {
                                  b13 = 2;
                                  turn = !turn;
                                  checkWonCondition();
                                });
                              }
                            }
                          },
                          child: Container(
                            height: 130.0,
                            decoration: MyBoxBorder(),
                            child: b13 == 0
                                ? Text("")
                                : b13 == 1
                                    ? MyCrossIcon()
                                    : MyCircleIcon(),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            if (b21 == 0) {
                              if (turn) {
                                setState(() {
                                  b21 = 1;
                                  turn = !turn;
                                  checkWonCondition();
                                });
                              } else {
                                setState(() {
                                  b21 = 2;
                                  turn = !turn;
                                  checkWonCondition();
                                });
                              }
                            }
                          },
                          child: Container(
                            height: 130.0,
                            decoration: MyBoxBorder(),
                            child: b21 == 0
                                ? Text("")
                                : b21 == 1
                                    ? MyCrossIcon()
                                    : MyCircleIcon(),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            if (b22 == 0) {
                              if (turn) {
                                setState(() {
                                  b22 = 1;
                                  turn = !turn;
                                  checkWonCondition();
                                });
                              } else {
                                setState(() {
                                  b22 = 2;
                                  turn = !turn;
                                  checkWonCondition();
                                });
                              }
                            }
                          },
                          child: Container(
                            height: 130.0,
                            decoration: MyBoxBorder(),
                            child: b22 == 0
                                ? Text("")
                                : b22 == 1
                                    ? MyCrossIcon()
                                    : MyCircleIcon(),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            if (b23 == 0) {
                              if (turn) {
                                setState(() {
                                  b23 = 1;
                                  turn = !turn;
                                  checkWonCondition();
                                });
                              } else {
                                setState(() {
                                  b23 = 2;
                                  turn = !turn;
                                  checkWonCondition();
                                });
                              }
                            }
                          },
                          child: Container(
                            height: 130.0,
                            decoration: MyBoxBorder(),
                            child: b23 == 0
                                ? Text("")
                                : b23 == 1
                                    ? MyCrossIcon()
                                    : MyCircleIcon(),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            if (b31 == 0) {
                              if (turn) {
                                setState(() {
                                  b31 = 1;
                                  turn = !turn;
                                  checkWonCondition();
                                });
                              } else {
                                setState(() {
                                  b31 = 2;
                                  turn = !turn;
                                  checkWonCondition();
                                });
                              }
                            }
                          },
                          child: Container(
                            height: 130.0,
                            decoration: MyBoxBorder(),
                            child: b31 == 0
                                ? Text("")
                                : b31 == 1
                                    ? MyCrossIcon()
                                    : MyCircleIcon(),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            if (b32 == 0) {
                              if (turn) {
                                setState(() {
                                  b32 = 1;
                                  turn = !turn;
                                  checkWonCondition();
                                });
                              } else {
                                setState(() {
                                  b32 = 2;
                                  turn = !turn;
                                  checkWonCondition();
                                });
                              }
                            }
                          },
                          child: Container(
                            height: 130.0,
                            decoration: MyBoxBorder(),
                            child: b32 == 0
                                ? Text("")
                                : b32 == 1
                                    ? MyCrossIcon()
                                    : MyCircleIcon(),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            if (b33 == 0) {
                              if (turn) {
                                setState(() {
                                  b33 = 1;
                                  turn = !turn;
                                  checkWonCondition();
                                });
                              } else {
                                setState(() {
                                  b33 = 2;
                                  turn = !turn;
                                  checkWonCondition();
                                });
                              }
                            }
                          },
                          child: Container(
                            height: 130.0,
                            decoration: MyBoxBorder(),
                            child: b33 == 0
                                ? Text("")
                                : b33 == 1
                                    ? MyCrossIcon()
                                    : MyCircleIcon(),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: won != 0
                  ? Container(
                      height: double.infinity,
                      width: double.infinity,
                      color: Colors.red.withOpacity(0.5),
                      child: Center(
                        child: Text(
                          won == 0
                              ? ""
                              : won == 1
                                  ? "Cross Won!!"
                                  : "Circle Won!!",
                          style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    )
                  : Text(""),
            )
          ],
        ),
      ),
    );
  }

  BoxDecoration MyBoxBorder() {
    return BoxDecoration(
      border: Border.all(color: Colors.black),
    );
  }
}

class MyCircleIcon extends StatelessWidget {
  const MyCircleIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.circle_outlined,
      size: 100.0,
    );
  }
}

class MyCrossIcon extends StatelessWidget {
  const MyCrossIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.close,
      size: 100.0,
    );
  }
}
