import 'package:flutter/material.dart';

class QuickPreviewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 380,
      decoration: BoxDecoration(
        // color: Colors.red,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5)),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(
            "https://cdn.dnaindia.com/sites/default/files/styles/full/public/2020/04/23/903342-netflix-dark.jpg",
          ),
        ),
      ),
      child: Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.only(top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "N",
              style: TextStyle(
                  color: Colors.red, fontSize: 28, fontWeight: FontWeight.bold),
            ),
            FlatButton(onPressed: null, child: Text("Movies",style:TextStyle(color:Colors.white,fontSize: 18),),),
            FlatButton(onPressed: null, child: Text("Series",style:TextStyle(color:Colors.white,fontSize: 18),),),
            FlatButton(onPressed: null, child: Text("My List",style:TextStyle(color:Colors.white,fontSize: 18),),),
          ],
        ),
      ),
    );
  }
}

class QuickPreviewidgetButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.only(left: 80),
      // margin: EdgeInsets.symmetric(vertical: 100),
      child: Row(
        children: <Widget>[
          IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {}),
          Container(
            margin: EdgeInsets.only(left: 30),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: FlatButton(
                onPressed: () {},
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.info_outline,
                      color: Colors.black,
                      size: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3),
                      child: Text("Info",
                          style: TextStyle(color: Colors.black, fontSize: 18)),
                    )
                  ],
                )),
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: FlatButton(
              onPressed: () {},
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 30,
                  ),
                  Text("Play",
                      style: TextStyle(color: Colors.white, fontSize: 17))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
