import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Class App Demo',
      home: MyHomePage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      backgroundColor: Color(0XFFFFFFFF),
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.amberAccent),
        ),
      ),
      //body: Center(child: Image.asset("asset  s/talent.png")),
      // body: Center(
      //   child: Container(
      //     height: 200,
      //     width: 200,
      //     decoration: BoxDecoration(
      //         color: Colors.orange,
      //         // border: Border(
      //         //   bottom: BorderSide(
      //         //     width: 12,
      //         //     color: Colors.black,
      //         //   ),
      //         //   right: BorderSide(
      //         //     width: 30,
      //         //     color: Colors.black,
      //         //   ),
      //         // )
      //         border: Border.all(width: 3, color: Colors.pink),
      //         // borderRadius: BorderRadius.circular(10)
      //         borderRadius: BorderRadius.only(
      //             topLeft: Radius.circular(20.0),
      //             bottomRight: Radius.circular(20.0))),
      //   ),
      // )
      body: Container(
        //width: 300,
        height: 500,
        color: Colors.black,
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //mainAxisAlignment: MainAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,

          //crossAxisAlignment: CrossAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          //(responsive for use stretch)
          //crossAxisAlignment: CrossAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.teal,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.orange,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
