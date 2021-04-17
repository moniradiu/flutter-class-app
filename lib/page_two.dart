import 'package:flutter/material.dart';
import 'package:flutter_app4/page_three.dart';

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
        actions: [
          PopupMenuButton(
              onSelected: (value) {
                //print(value);
                if (value == "Page Three") {
                  Route route =
                      MaterialPageRoute(builder: (context) => PageThree());
                  Navigator.push(context, route);
                }
              },
              offset: Offset(30.0, 40.0),
              itemBuilder: (BuildContext contex) {
                return [
                  PopupMenuItem(
                    child: Text("Page One"),
                    value: "Page One",
                  ),
                  PopupMenuItem(
                    child: Text("Page Two"),
                    value: "Page Two",
                  ),
                  PopupMenuItem(
                    child: Text("Page Three"),
                    value: "Page Three",
                  ),
                ];
              }),
        ],
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
