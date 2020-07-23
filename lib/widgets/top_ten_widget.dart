import 'package:flutter/material.dart';

class TopTendWidgets extends StatelessWidget {
  final List<String> _imagesTopTen = [
    "narcos",
    "100",
    "moneyheist",
    "sacredgames",
    "riverdale",
    "tbt",
    "lucifer",
    "teenwolf",
    "13reasons",
    "thewalkingdead"
  ];
  final List<String> _numberTopTen = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: SizedBox(
              height: 200,
              child: ListView.builder(
                  itemCount: _imagesTopTen.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 140,
                      width: 140,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(0))),
                      child: Stack(
                        children: <Widget>[
                          Image.asset(
                            "assets/images/${_imagesTopTen[index]}.jpg",
                            fit: BoxFit.fill,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "${_numberTopTen[index]}",
                              style: TextStyle(
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..color = Colors.white
                                    ..strokeWidth = 5),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "${_numberTopTen[index]}",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
