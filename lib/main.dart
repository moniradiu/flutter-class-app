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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 150,
              color: Colors.amber[100],
            ),
            Container(
              height: 150,
              color: Colors.pink[100],
            ),
            Container(
              height: 150,
              color: Colors.purple[200],
            ),
            Container(
              height: 150,
              color: Colors.blueGrey[100],
            ),
            Container(
              height: 150,
              color: Colors.red[100],
            ),
            Container(
              height: 150,
              color: Colors.green[100],
            ),
            Container(
              height: 150,
              color: Colors.lime[100],
            ),

            // TextField(
            //   controller: textEditingController,
            //   cursorColor: Colors.green,
            //   cursorHeight: 30,
            //   decoration: InputDecoration(
            //       contentPadding:
            //           EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            //       fillColor: Colors.black12,
            //       filled: true,
            //       hintText: "Enter Your Name",
            //       hintStyle: TextStyle(color: Colors.deepPurple),
            //       labelText: "First Name",
            //       labelStyle: TextStyle(color: Colors.blue[20], fontSize: 20),
            //       border: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(10),
            //           borderSide: BorderSide(color: Colors.orange, width: 2)),
            //       enabledBorder: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(10),
            //           borderSide: BorderSide(color: Colors.green)),
            //       focusedBorder: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(10),
            //           borderSide: BorderSide(color: Colors.red)),
            //       disabledBorder: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(10)),
            //       prefixIcon: const Icon(
            //         Icons.location_city,
            //         color: Colors.green,
            //       ),
            //       suffixIcon: Icon(
            //         Icons.arrow_upward_outlined,
            //         color: Colors.green,
            //       )),
            // ),
          ],
        ),
      ),
    );
  }
}
