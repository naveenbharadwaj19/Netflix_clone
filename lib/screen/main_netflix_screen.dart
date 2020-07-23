import 'package:flutter/material.dart';
import 'package:netflix_clone/screen/coming_soon_screen.dart';
import 'package:netflix_clone/screen/download_screen.dart';
import 'package:netflix_clone/screen/more_screem.dart';
import 'package:netflix_clone/screen/search_screen.dart';
import 'package:netflix_clone/widgets/home_widget.dart';
import '../widgets/bottom_widgets.dart';

class MainHomePageScreen extends StatefulWidget {
  static const routeName = "main-screen_netflix";

  @override
  _MainHomePageScreenState createState() => _MainHomePageScreenState();
}

class _MainHomePageScreenState extends State<MainHomePageScreen> {
  int index = 0;
  List _widgetsScreen = [HomeWidget(), SearchScreen(), ComingSoonScreen(),DownloadScreen(),MoreScreen()];

  tapped(int tappedIndex) {
    setState(() {
      index = tappedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: _widgetsScreen[index],
      bottomNavigationBar: BottomWidgets(index, tapped),
    );
  }
}
