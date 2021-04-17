import 'package:flutter/material.dart';
// ignore: unused_import
import 'page_one.dart';
// ignore: unused_import
import 'page_two.dart';
// ignore: unused_import
import 'page_three.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Class App Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        PageOne.path: (context) => PageOne(),
        PageTwo.path: (context) => PageTwo(),
        PageThree.path: (context) => PageThree(),
        // "/": (context) => PageOne(),
        // "pageTwo": (context) => PageTwo(),
        // "pageThree": (context) => PageThree(),
      },
      // home: MyHomePage(),
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // visualDensity: VisualDensity.adaptivePlatformDensity,
      //),

      // home: PageOne(),
    );
  }
}
