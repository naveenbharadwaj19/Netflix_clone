import 'package:flutter/material.dart';

class TrendingNow extends StatelessWidget {
  final List<String> _imagesTrendingNow = ["riverdale","birdbox","teenwolf","breakingbad","moneyheist","sacredgames"];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: SizedBox(
              height: 200,
              child: ListView.builder(
                  itemCount: _imagesTrendingNow.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 140,
                      width: 140,
                      margin: EdgeInsets.only(left:10),
                      decoration: BoxDecoration(
                        // color: _colors[index],
                        borderRadius: BorderRadius.all(Radius.circular(0))
                      ),
                      child: Image.asset("assets/images/${_imagesTrendingNow[index]}.jpg",fit: BoxFit.fill,),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
