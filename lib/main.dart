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
  int count = 0;
  void _increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("BottomNavigationBar Lecture-$count"),
          backgroundColor: Colors.green),
      body: Center(
        child: bodyItems[_currentIndex],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _increment,
        icon: Icon(Icons.add),
        label: Text("Add"),
        backgroundColor: Colors.orange,
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
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
    return Center(
      child: GestureDetector(
        child: InkWell(
          splashColor: Colors.amber,
          onTap: () {
            print("Tapped GestureDetector");
          },
          child: Container(
            //color: Colors.pinkAccent,
            height: 200,
            width: 200,
            child: Text(
              "Page One",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: InkWell(
          splashColor: Colors.pink,
          onTap: () {
            print("Tapped GestureDetector");
          },
          child: Container(
            //color: Colors.pinkAccent,
            height: 200,
            width: 200,
            child: Text(
              "Page Two",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class PageThree extends StatelessWidget {
  // List<String> listItems = ["Hello", "World", "Flutter", "Love"];
  List myProducts = List.generate(100, (index) {
    return {"id": index, "title": "Product \#$index", "price": index};
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: myProducts.length,
        itemBuilder: (BuildContext ctx, index) {
          // Display the list item
          return Dismissible(
            key: UniqueKey(),

            // only allows the user swipe from right to left
            direction: DismissDirection.endToStart,

            // Remove this product from the list
            // In production enviroment, you may want to send some request to delete it on server side
            onDismissed: (_) {
              setState(() {
                myProducts.removeAt(index);
              });
            },

            // Display item's title, price...
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: ListTile(
                leading: CircleAvatar(
                  child: Text(myProducts[index]["id"].toString()),
                ),
                title: Text(myProducts[index]["title"]),
                subtitle: Text("\$${myProducts[index]["price"].toString()}"),
                trailing: Icon(Icons.arrow_back),
              ),
            ),

            // This will show up when the user performs dismissal action
            // It is a red background and a trash icon
            background: Container(
              color: Colors.red,
              margin: EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }

  void setState(Null Function() param0) {}
}
