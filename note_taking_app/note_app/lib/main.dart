import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MyNoteHome(),
    );
  }
}

class MyNoteHome extends StatefulWidget {
  const MyNoteHome({
    Key? key,
  }) : super(key: key);

  @override
  State<MyNoteHome> createState() => _MyNoteHomeState();
}

class _MyNoteHomeState extends State<MyNoteHome> {
  TextEditingController titleControl = TextEditingController();
  TextEditingController textControl = TextEditingController();

  List<Map> myNotes = [
    {
      "title": "Title of note one",
      "text": "Lorem Ipsum is simply dummy text of the printing pe and scrambl"
    },
    {
      "title": "Title of note two",
      "text":
          "Lorem Ipsum is simply dummy text of the printing  text ever since"
    },
    {
      "title": "Example title three",
      "text":
          "Lorem Ipsum is simply dummy text of the printing pe and scrambled it to make a type specimen b"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text("Add a note"),
              content: SingleChildScrollView(
                child: Column(
                  children: [
                    Text("Title"),
                    TextField(
                      controller: titleControl,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Text("Text"),
                    ),
                    TextField(
                      controller: textControl,
                      maxLines: 4,
                    ),
                  ],
                ),
              ),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Map newNote = {
                        "title": titleControl.text,
                        "text": textControl.text,
                      };

                      myNotes.add(newNote);
                      print(myNotes);
                    });
                  },
                  child: Text("Add"),
                )
              ],
            ),
          ),
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Text('Note App'),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: myNotes.length,
            itemBuilder: (context, foo) => Card(
              color: Colors.redAccent,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      myNotes[foo]["title"],
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      (myNotes[foo]["text"]),
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
