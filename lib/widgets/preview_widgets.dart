import 'package:flutter/material.dart';

class PreviewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          PreviewCircles(),
        ],
      ),
    );
  }
}

class PreviewCircles extends StatefulWidget {
  @override
  _PreviewCirclesState createState() => _PreviewCirclesState();
}

class _PreviewCirclesState extends State<PreviewCircles> {
  // int index = 0;
  final List<String> _previewImages = [
    "breakingbad",
    "dark2",
    "lucifer",
    "moneyheist",
    "sexeducation",
    "teenwolf",
    "riverdale",
    "birdbox",
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: SizedBox(
            height: 100,
                      child: ListView.builder(
            itemCount: _previewImages.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(left:15),
                child: CircleAvatar(
                  // backgroundColor: Colors.red,
                  radius: 50,
                  backgroundImage:
                      AssetImage("assets/images/${_previewImages[index]}.jpg"),
                ),
              );
            }),
          ),
    );
  }
}
