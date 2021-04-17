import 'package:flutter/material.dart';
import 'package:flutter_app4/page_three.dart'; // TODO Implement this library.

class PageTwo extends StatelessWidget {
  static final String path = "PageTwo";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Page Two",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Route route =
                    MaterialPageRoute(builder: (context) => PageThree());
                Navigator.push(context, route);
              },
              child: Text("Page Two"),
            )
            // ElevatedButton(
            //     style: ButtonStyle(
            //       backgroundColor: MaterialStateProperty.all(Colors.teal),
            //       shadowColor: MaterialStateProperty.all(Colors.red),
            //     ),
            // onPressed: () {
            //   Navigator.push(context,
            //       MaterialPageRoute(builder: (context) => PageThree()));
            // },
            // child: Text("Page Two")),
          ],
        ),
      ),
    );
  }
}
