import 'package:flutter/material.dart';

class UsTvShowsWidget extends StatelessWidget {
  final List<String> _imagesUsTvShows = ["13reasons","thewalkingdead","narcos","riverdale","dark2"];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: SizedBox(
              height: 200,
              child: ListView.builder(
                  itemCount: _imagesUsTvShows.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 140,
                      width: 140,
                      margin: EdgeInsets.only(left:10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0))
                      ),
                      child: Image.asset("assets/images/${_imagesUsTvShows[index]}.jpg",fit: BoxFit.fill,),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
