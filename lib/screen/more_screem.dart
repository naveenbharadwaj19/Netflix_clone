import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color _colorWhite = Colors.white;
    final Color _colorGrey = Colors.grey;
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[
              Image.asset(
                "assets/images/watching.jpg",
                height: 120,
                width: 85,
                // fit: BoxFit.fill,
              ),
              Padding(padding: EdgeInsets.all(2)),
              Text("Profile 1",
                  style: TextStyle(
                      color: _colorWhite,
                      fontSize: 18,
                      fontStyle: FontStyle.italic)),
              Padding(padding: EdgeInsets.all(8)),
              FlatButton.icon(
                  onPressed: null,
                  icon: Icon(Icons.edit, color: _colorGrey),
                  label: Text("Manage Profiles",style: TextStyle(color:_colorGrey,fontSize: 20),))
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 250),
          padding: EdgeInsets.only(left: 10),
          child: Column(
            children: <Widget>[
              FlatButton.icon(
                  onPressed: null,
                  icon: Icon(
                    Icons.check,
                    color: _colorGrey,
                    size: 26,
                  ),
                  label: Text(
                    "My List",
                    style: TextStyle(color: _colorGrey, fontSize: 20),
                  )),
              Padding(padding: EdgeInsets.all(1)),
              FlatButton(
                  onPressed: null,
                  child: Text("App Settings",
                      style: TextStyle(color: _colorGrey, fontSize: 20))),
              Padding(padding: EdgeInsets.all(1)),
              FlatButton(
                  onPressed: null,
                  child: Text("Account",
                      style: TextStyle(color: _colorGrey, fontSize: 20))),
              Padding(padding: EdgeInsets.all(1)),
              FlatButton(
                  onPressed: null,
                  child: Text("Help",
                      style: TextStyle(color: _colorGrey, fontSize: 20))),
              Padding(padding: EdgeInsets.all(1)),
              FlatButton(
                  onPressed: null,
                  child: Text("Sign Out",
                      style: TextStyle(color: _colorGrey, fontSize: 20))),
            ],
          ),
        ),
      ],
    );
  }
}
