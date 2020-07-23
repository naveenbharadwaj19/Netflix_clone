import 'package:flutter/material.dart';
import 'package:netflix_clone/screen/main_netflix_screen.dart';

class WatchingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double fontSize = 22;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              child: Text(
                "Who's Watching ?",
                style: TextStyle(fontSize: fontSize, color: Colors.white),
              ),
              padding: EdgeInsets.only(top: 12),
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 18),
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: () => Navigator.pushReplacementNamed(context, MainHomePageScreen.routeName),
                    child: Image.asset(
                      'assets/images/watching.jpg',
                      fit: BoxFit.cover,
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15, left: 55),
                  child: IconButton(
                    iconSize: 50,
                    icon: Icon(
                      Icons.add_circle,
                      color: Colors.white,
                    ),
                    onPressed: null,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 10, left: 15),
                  child: Text(
                    "Profile 1",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                Container(
                  // margin: EdgeInsets.all(15),
                  padding: EdgeInsets.only(left: 60, top: 10),
                  child: Text(
                    "Add profile",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
