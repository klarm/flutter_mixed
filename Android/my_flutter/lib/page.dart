import 'dart:math';

import 'package:flutter/material.dart';
import 'global_config.dart';
import 'question.dart';

class Page extends StatefulWidget{

  @override
  PageState createState() => new PageState();
}

class PageState extends State<Page>{

  Widget pageCard(int index) {
    BisonItem bisonItem = dataList[index];
  if ((index+1) % 6 == 0){
return new Container(
      decoration: new BoxDecoration(
          color: GlobalConfig.cardBackgroundColor,
          border: new BorderDirectional(
              bottom: new BorderSide(color: GlobalConfig.dark == true ?  Colors.white12 : Colors.black12, width: 1.0)
          )
      ),
      child: new FlatButton(
          child: new Container(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: new Row(
              children: <Widget>[
                new Expanded(
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          child: new Text(
                            bisonItem.title,
                            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0, height: 1.1, color: GlobalConfig.dark == true ? Colors.white54 : Colors.black),
                          ),
                          padding: const EdgeInsets.only(bottom: 5.0,right: 4.0),
                          alignment: Alignment.topCenter,
                        ),
                        new Container(
                          child: new Text(bisonItem.hotNum, style: new TextStyle(color: GlobalConfig.fontColor)),
                          alignment: Alignment.topCenter,
                        ),
                          new Container(
                          child: new Image.network(bisonItem.imgUrl, fit: BoxFit.cover, width: 200, height: 80),
                          padding: const EdgeInsets.only(bottom: 10.0,right: 4.0),
                          alignment: Alignment.bottomCenter,
                        ),
                      ],
                    )
                )
              ],
            ),
          )
      ),
    );
  }
  else if ((index) % 4 == 1){
  return new Container(
      decoration: new BoxDecoration(
          color: GlobalConfig.cardBackgroundColor,
          border: new BorderDirectional(
              bottom: new BorderSide(color: GlobalConfig.dark == true ?  Colors.white12 : Colors.black12, width: 1.0)
          )
      ),
      child: new FlatButton(
          child: new Container(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: new Row(
              children: <Widget>[
                 new Expanded(
                    flex: 3,
                    child: new AspectRatio(
                        aspectRatio: 3.0 / 2.0,
                        child: new Container(
                          foregroundDecoration:new BoxDecoration(
                              image: new DecorationImage(
                                image: new NetworkImage(bisonItem.imgUrl),
                                centerSlice: new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                              ),
                              borderRadius: const BorderRadius.all(const Radius.circular(6.0))
                          ),
                        )
                    )
                ),
                new Expanded(
                    flex: 6,
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          child: new Text(
                            bisonItem.title,
                            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, height: 1.1, color: GlobalConfig.dark == true ? Colors.white70 : Colors.black),
                          ),
                          padding: const EdgeInsets.only(bottom: 10.0,right: 4.0, left: 4.0),
                          alignment: Alignment.topLeft,
                        ),
                        new Container(
                          child: new Text(bisonItem.hotNum, style: new TextStyle(color: GlobalConfig.fontColor)),
                          alignment: Alignment.topLeft,
                        )
                      ],
                    )
                )
              ],
            ),
          )
      ),
    );
  }else{
    return new Container(
      decoration: new BoxDecoration(
          color: GlobalConfig.cardBackgroundColor,
          border: new BorderDirectional(
              bottom: new BorderSide(color: GlobalConfig.dark == true ?  Colors.white12 : Colors.black12, width: 1.0)
          )
      ),
      child: new FlatButton(
          child: new Container(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: new Row(
              children: <Widget>[
                new Expanded(
                    flex: 6,
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          child: new Text(
                            bisonItem.title,
                            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, height: 1.1, color: GlobalConfig.dark == true ? Colors.white70 : Colors.black),
                          ),
                          padding: const EdgeInsets.only(bottom: 10.0,right: 4.0),
                          alignment: Alignment.topLeft,
                        ),
                        new Container(
                          child: new Text(bisonItem.hotNum, style: new TextStyle(color: GlobalConfig.fontColor)),
                          alignment: Alignment.topLeft,
                        )
                      ],
                    )
                ),
                new Expanded(
                    flex: 3,
                    child: new AspectRatio(
                        aspectRatio: 3.0 / 2.0,
                        child: new Container(
                          foregroundDecoration:new BoxDecoration(
                              image: new DecorationImage(
                                image: new NetworkImage(bisonItem.imgUrl),
                                centerSlice: new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                              ),
                              borderRadius: const BorderRadius.all(const Radius.circular(6.0))
                          ),
                        )
                    )
                )
              ],
            ),
          )
      ),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    return new SingleChildScrollView(
        child: new Container(
        margin: const EdgeInsets.only(top: 15.0),
        child: new Column(
          children: <Widget>[
            new Container(
              margin: const EdgeInsets.only(top: 15.0),
            ),

            pageCard(0),
            pageCard(1),
            pageCard(2),
            pageCard(3),
            pageCard(4),
            pageCard(5),
            pageCard(6),
            pageCard(7),
            pageCard(8),
            pageCard(9),

            pageCard(0),
            pageCard(1),
            pageCard(2),
            pageCard(3),
            pageCard(4),
            pageCard(5),
            pageCard(6),
            pageCard(7),
            pageCard(8),
            pageCard(9),

            pageCard(0),
            pageCard(1),
            pageCard(2),
            pageCard(3),
            pageCard(4),
            pageCard(5),
            pageCard(6),
            pageCard(7),
            pageCard(8),
            pageCard(9),

            pageCard(0),
            pageCard(1),
            pageCard(2),
            pageCard(3),
            pageCard(4),
            pageCard(5),
            pageCard(6),
            pageCard(7),
            pageCard(8),
            pageCard(9),
          ],
        ),
      )
    );
  }
}