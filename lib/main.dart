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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "I Am Talent",
          style: TextStyle(color: Colors.amberAccent),
        ),
      ),
      //body: Center(child: Image.asset("asset  s/talent.png")),
      body: Center(
          child: Image.network(
              "https://pngtree.com/freepng/personality-cartoon-boy-character_3934062.html")),
    );
  }
}
