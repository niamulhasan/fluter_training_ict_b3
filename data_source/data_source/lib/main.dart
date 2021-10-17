import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import 'components/MyListCard.dart';
import 'pages/MyHomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MyHomePage(),
    );
  }
}
