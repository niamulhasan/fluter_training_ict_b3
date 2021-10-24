import 'package:data_source/data/MyData.dart';
import 'package:data_source/pages/MyDetailsPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<Map> the_data = MyData().data;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView.builder(
            itemCount: the_data.length,
            itemBuilder: (context, index) => MyListCard(
              the_data: the_data,
              the_index: index,
              grad_colors: the_data[index]['grad'],
            ),
          ),
        ),
      ),
    );
  }
}

class MyListCard extends StatelessWidget {
  final int the_index;
  final List<Color> grad_colors;
  const MyListCard({
    Key? key,
    required this.the_data,
    required int this.the_index,
    required List<Color> this.grad_colors,
  }) : super(key: key);

  final List<Map> the_data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MyDetailsPage(theIndex: the_index),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: this.grad_colors,
            ),
          ),
          child: Card(
            color: Colors.transparent,
            child: ListTile(
              leading: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image(
                      image: NetworkImage(the_data[the_index]['cover']),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 10.0,
                  )
                ],
              ),
              title: Text(the_data[the_index]['nameBengali']),
              subtitle: Text(the_data[the_index]['nameEnglish']),
            ),
          ),
        ),
      ),
    );
  }
}
