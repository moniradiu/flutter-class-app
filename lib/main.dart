import 'package:flutter/material.dart';
//import 'package:flutter_app4/page_two.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyNavigationBar(),
    );
  }
}

class MyNavigationBar extends StatefulWidget {
  //MyNavigationBar ({Key key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _currentIndex = 0;
  List<Widget> bodyItems = [
    PageOne(),
    PageTwo(),
    PageThree(),

    // Container(
    //   child: Text('Home Page',
    //       style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    //   color: Colors.blue,
    //   height: 200,
    //   width: 200,
    // ),
    // Container(
    //   child: Text("Search Page",
    //       style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    //   color: Colors.red,
    //   height: 200,
    //   width: 200,
    // ),
    // Container(
    //   child: Text("Profile Page",
    //       style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    //   color: Colors.orange,
    //   height: 200,
    //   width: 200,
    // ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Flutter BottomNavigationBar'),
          backgroundColor: Colors.green),
      body: Center(
        child: bodyItems[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Colors.green,
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
              backgroundColor: Colors.yellow),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            backgroundColor: Colors.blue,
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Colors.green,
        iconSize: 40,
        elevation: 5,
        // type: BottomNavigationBarType.shifting,
        // currentIndex: _selectedIndex,
        // selectedItemColor: Colors.black,
        // iconSize: 40,
        // onTap: _onItemTapped,
        // elevation: 5
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: GestureDetector(
    //     onTap: () {
    //       print("Tapped GestureDetector");
    //     },
    //     child: Container(
    //       color: Colors.pinkAccent,
    //       height: 200,
    //       width: 200,
    //       child: Text(
    //         "Page One",
    //         style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    //       ),
    //     ),
    //   ),
    // );
    //
    // return Center(
    //   child: GestureDetector(
    //     child: InkWell(
    //       onTap: () {
    //         print("Tapped GestureDetector");
    //       },
    //       child: Container(
    //         color: Colors.pinkAccent,
    //         height: 200,
    //         width: 200,
    //         child: Text(
    //           "Page One",
    //           style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      height: 200,
      width: 200,
      child: Text("Page Two",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    );
  }
}

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 200,
      width: 200,
      child: Text("Page Three",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    );
  }
}
