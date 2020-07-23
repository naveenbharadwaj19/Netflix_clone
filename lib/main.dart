import 'package:flutter/material.dart';
import './screen/watching_screen.dart';
import './screen/main_netflix_screen.dart';


void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
      routes: {
        MainHomePageScreen.routeName :(context) => MainHomePageScreen(),
      },
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          "assets/images/netflixtextstyle.jpg",
          height: 140,
          width: 145,
          fit: BoxFit.fill,
        ),
        backgroundColor: Colors.black54,
        actions: <Widget>[IconButton(icon: Icon(Icons.edit), onPressed: () {})],
      ),
      body: WatchingScreen(),
    );
  }
}
