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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      //body: ListView.builder(
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            thickness: 10,
          );
        },
        physics: BouncingScrollPhysics(),
        itemCount: 8,
        itemBuilder: (context, index) {
          return Container(
            height: 150,
            color: color[index],
          );
        },
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
