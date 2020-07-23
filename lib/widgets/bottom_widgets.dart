import 'package:flutter/material.dart';

// AKA bottom widgets to access different screens

class BottomWidgets extends StatefulWidget {
  final int index;
  final Function tapped;

  BottomWidgets(this.index, this.tapped);
  @override
  _BottomWidgetsState createState() => _BottomWidgetsState();
}

class _BottomWidgetsState extends State<BottomWidgets> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          // height: 55,
          // width: double.infinity,
          // decoration: BoxDecoration(
          //   // color: Colors.black45,
          //   borderRadius: BorderRadius.only(
          //     topLeft: Radius.circular(10.0),
          //     topRight: Radius.circular(10.0),
          //   ),
          // ),
          child: BottomNavigationBar(
              type: BottomNavigationBarType.shifting,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.white,
              currentIndex: widget.index,
              onTap: widget.tapped,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                    ),
                    title: Text("Home"),
                    backgroundColor: Colors.black54),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    title: Text("Search"),
                    backgroundColor: Colors.black54),
                BottomNavigationBarItem(
                    icon: Icon(Icons.filter),
                    title: Text("Coming Soon"),
                    backgroundColor: Colors.black54),
                BottomNavigationBarItem(
                    icon: Icon(Icons.file_download),
                    title: Text("Download"),
                    backgroundColor: Colors.black54),
                BottomNavigationBarItem(
                    icon: Icon(Icons.list),
                    title: Text("More"),
                    backgroundColor: Colors.black54),
              ])),
    ]);
  }
}
