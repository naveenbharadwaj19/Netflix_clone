import 'package:flutter/material.dart';

class DownloadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.center,
          child: CircleAvatar(
            radius: 100,
            backgroundColor: Colors.grey,
            child: Icon(
              Icons.file_download,
              color: Colors.black,
              size: 100,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.only(bottom: 30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(6),
              ),
            ),
            child: FlatButton(
                onPressed: null,
                child: Text(
                  "Find Something to Download",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                )),
          ),
        ),
      ],
    );
  }
}
