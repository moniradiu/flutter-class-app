import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_app4/page_three.dart';

// ignore: unused_import
import 'package:flutter_app4/page_one.dart';

class PageThree extends StatelessWidget {
  static final String path = "PageThree";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Page Three",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.teal),
                  shadowColor: MaterialStateProperty.all(Colors.red),
                ),
                onPressed: () {
                  // Navigator.pop(context);
                  Navigator.popAndPushNamed(context, "/");
                  // Navigator.popAndPushNamed(context, "/PageOne");
                  // Navigator.push(context,
                  // MaterialPageRoute(builder: (context) => PageOne()));
                },
                child: Text("Page Three")),
          ],
        ),
      ),
    );
  }
}
