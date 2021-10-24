import 'package:flutter/material.dart';
import 'package:theme_example/MyThemes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: MyTheme().greenDark,
      home: Scaffold(
          drawer: const Drawer(
            child: Center(
              child: Text("I am a drawer"),
            ),
          ),
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text("Example Text"),
                  const Text(
                    "Example Text two",
                    style: TextStyle(
                      fontSize: 28.0,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("I am a text Button"),
                  ),
                  const TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: "hintText",
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("An Elevated Button"),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.accessible_forward),
                    label: Text("Icon Elevated"),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add),
                  ),
                  FloatingActionButton.extended(
                    onPressed: () {},
                    label: Icon(Icons.access_alarm),
                  ),
                  Icon(Icons.umbrella),
                  Icon(Icons.radar_outlined),
                  ListTile(
                    leading: CircleAvatar(child: Icon(Icons.earbuds)),
                    title: Text("I am the title"),
                    subtitle: Text("I am a subtitle"),
                    trailing: Icon(Icons.add),
                  ),
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(child: Icon(Icons.earbuds)),
                      title: Text("I am the title"),
                      subtitle: Text("I am a subtitle"),
                      trailing: Icon(Icons.add),
                    ),
                  ),
                  Image.network("https://picsum.photos/200/300"),
                ],
              ),
            ),
          )),
    );
  }
}
