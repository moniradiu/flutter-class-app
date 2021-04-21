//
// ignore: avoid_web_libraries_in_flutter
//import 'dart:html';

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

// class MyApp extends StatelessWidget {
// // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Class App Demo',
//       debugShowCheckedModeBanner: false,
//       // routes: {
//       //   PageOne.path: (context) => PageOne(),
//       //   PageTwo.path: (context) => PageTwo(),
//       //   PageThree.path: (context) => PageThree(),
//       // },
//     );
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // routes: {
        //   PageOne.path: (context) => PageOne(),
        //   PageTwo.path: (context) => PageTwo(),
        //   PageThree.path: (context) => PageThree(),
        // },
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("Flutter Switch Example"),
          ),
          body: Center(child: SwitchScreen()),
        ));
  }
}

class SwitchScreen extends StatefulWidget {
  @override
  SwitchClass createState() => new SwitchClass();
}

class SwitchClass extends State {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Transform.scale(
          scale: 2,
          child: Switch(
            onChanged: toggleSwitch,
            value: isSwitched,
            activeColor: Colors.blue,
            activeTrackColor: Colors.yellow,
            inactiveThumbColor: Colors.redAccent,
            inactiveTrackColor: Colors.orange,
          )),
      Text(
        '$textValue',
        style: TextStyle(fontSize: 20),
      ),
      ElevatedButton.icon(
        label: Text("Click Me"),
        icon: Icon(Icons.web),
        style: ElevatedButton.styleFrom(
          primary: Colors.green,
        ),

        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("This is alert dialog"),
                  titleTextStyle: TextStyle(
                    color: Colors.amber,
                    fontSize: 20.0,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  content: Text("This is Context"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("yes")),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("No"))
                  ],
                );
              });
        },
        //child: Text("no"),
      ),
      ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: Text("Do Something"),
            backgroundColor: Colors.deepPurple,
            action: SnackBarAction(
              label: "yes",
              textColor: Colors.white,
              onPressed: () {},
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Text("SnackBar"),
      ),
    ]);
  }
}
