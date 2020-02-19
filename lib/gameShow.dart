import 'package:flutter/material.dart';

class GameShow extends StatefulWidget {
  GameShow({
    this.name,
    this.pwd,
  });

  final String name;
  final String pwd;

  @override
  _GameShowState createState() => _GameShowState();
}

class _GameShowState extends State<GameShow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 64, left: 20, right: 20, bottom: 20),
      color: Colors.yellow,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text('username'),
                          Container(
                            padding: EdgeInsets.only(left: 30),
                            child: Text(widget.name),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text('password'),
                          Container(
                            padding: EdgeInsets.only(left: 30),
                            child: Text(widget.pwd),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.red,
                ),
                Text('14'),
              ],
            ),
            //按钮行
            buildButtonSection(),

            Container(
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
              height: 250,
              color: Colors.green,
              child: Text(
                  "1123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj23afdajfa;faj"),
            ),
            Image.asset(
              'images/a.png',
              width: 120,
              height: 90,
            ),
            RaisedButton(//按钮有背影色,它跟flatButton都有波纹效果
              child: Text('RaisedButton'),
              onPressed: () => {
                print('press'),
              },
            ),
            FlatButton(
              onPressed: () => {
                print('flatbutton click'),
              },
              child: Text('FlatButton'),
              color: Colors.blue,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            ),
          ]),
    );
  }

  Row buildButtonSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        buildButtonColumn('item1adfaaf'),
        buildButtonColumn('item2ffsafdf'),
        buildButtonColumn('item3aa'),
      ],
    );
  }

  Container buildButtonColumn(String name) {
    return Container(
      width: 100,
      height: 80,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.star,
            color: Colors.blue,
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Text(name),
          ),
        ],
      ),
    );
  }
}
