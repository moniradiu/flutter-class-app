import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: MyHomePage(title: 'Flutter Lecture-12'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var textEditingController = TextEditingController();
  List<Color> color = [
    Colors.amber[100],
    Colors.pink[100],
    Colors.purple[200],
    Colors.blueGrey[100],
    Colors.blue[100],
    Colors.red[100],
    Colors.green[100],
    Colors.lime[200],
  ];
  var dropDownItemValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      //body: ListView.builder(
      body: Column(
        children: [
          DropdownButton(
            autofocus: false,
            focusColor: Colors.red,
            dropdownColor: Colors.yellow[200],
            onChanged: (value) {
              setState(() {
                dropDownItemValue = value;
              });
              print(dropDownItemValue);
            },
            value: dropDownItemValue,
            underline: Container(
              padding: EdgeInsets.all(2),
            ),
            // icon: Icon(Icons.add),
            //elevation: 2,
            items: [
              DropdownMenuItem(
                child: Text(" item 1"),
                value: 0,
              ),
              DropdownMenuItem(child: Text(" item 2"), value: 1),
              DropdownMenuItem(child: Text(" item 3"), value: 2),
              DropdownMenuItem(child: Text(" item 4"), value: 3),
            ],
          )
        ],
      ),
    );
  }
}

//  child: SingleChildScrollView(
//         padding: const EdgeInsets.all(15),
//         scrollDirection: Axis.horizontal,
//         child: Row(
//           children: [
//             Container(
//               width: 150,
//               color: Colors.amber[100],
//             ),
//             Container(
//               width: 150,
//               color: Colors.pink[100],
//             ),
//             Container(
//               width: 150,
//               color: Colors.purple[200],
//             ),
//             Container(
//               width: 150,
//               color: Colors.blueGrey[100],
//             ),
//             Container(
//               width: 150,
//               color: Colors.red[100],
//             ),
//             Container(
//               width: 150,
//               color: Colors.green[100],
//             ),
//             Container(
//               width: 150,
//               color: Colors.lime[100],
//             ),
//           ],
//         ),
//       ),
