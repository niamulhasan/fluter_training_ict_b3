// ignore_for_file: file_names

import 'package:data_source/data/MyData.dart';

import '../components/MyListCard.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  final List data = MyData().data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Builder'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, i) => MyListCard(
              my_title: data[i]['name'],
              my_image: Image.network("https://loremflickr.com/240/240/dog"),
              my_sub: data[i]['add']),
        ),
      ),
    );
  }
}
