import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/popular_netflix_widget.dart';
import 'package:netflix_clone/widgets/preview_widgets.dart';
import 'package:netflix_clone/widgets/quick_preview_widget.dart';
import 'package:netflix_clone/widgets/top_ten_widget.dart';
import 'package:netflix_clone/widgets/trending_now_widgets.dart';
import 'package:netflix_clone/widgets/us_tv_shows_widgets.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color _white = Colors.white;
    return ListView(
        children: <Widget>[
          QuickPreviewWidget(),
          QuickPreviewidgetButtons(),
          Container(
            margin: EdgeInsets.symmetric(vertical: 35),
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Previews",
              style: TextStyle(
                  color: _white, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          PreviewWidget(),
          Container(
            margin: EdgeInsets.symmetric(vertical: 40),
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Trending Now",
              style: TextStyle(
                  color: _white, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          TrendingNow(),
          Container(
            margin: EdgeInsets.symmetric(vertical: 40),
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Popular on Netflix",
              style: TextStyle(
                  color: _white, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          PopularNetflixWidget(),
          Container(
            margin: EdgeInsets.symmetric(vertical: 40),
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "US Tv Shows",
              style: TextStyle(
                  color: _white, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          UsTvShowsWidget(),
          Container(
            margin: EdgeInsets.symmetric(vertical: 40),
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Top Ten",
              style: TextStyle(
                  color: _white, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          TopTendWidgets(),
        ],
    );
  }
}
