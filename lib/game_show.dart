import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_demo/earthListPage.dart';

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
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('控件集合'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 64, left: 20, right: 20, bottom: 20),
        color: Colors.yellow,
        child: ListView(
          children: <Widget>[
            buildColumn(),
          ],
        ),
      ),
    );
  }

  Column buildColumn() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            alignment: Alignment(0.5, 0.5),
            children: <Widget>[
              Image.asset(
                'images/b.png',
                width: 120,
                height: 90,
              ),
              Text('Stack'),
            ],
          ),
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
            height: 120,
            color: Colors.green,
            child: Text(
                "1123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj123afdajfa;faj23afdajfa;faj"),
          ),
          CircleAvatar(
            radius: 40,
            child: Image.asset(
              'images/b.png',
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          Image.asset(
            'images/a.png',
            width: 120,
            height: 90,
          ),
          Center(
            child: Text('居中用center控件'),
          ),
          RaisedButton(
            //按钮有背影色,它跟flatButton都有波纹效果
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
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),

          //material风格 文本框
          Container(
            padding: EdgeInsets.only(top: 20),
            width: 200,
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                // border: OutlineInputBorder(
                //     borderRadius: BorderRadius.circular(15.0),
                //   ),带圆角的，但是效果不好，选中时边框会变色，唉，四不像,不建议使用
                hintText: 'Enter a search term',
              ),
              onChanged: (text) {
                print('change $text');
              },
            ),
          ),
          //ios风格 文本框
          // Container(
          //   margin: EdgeInsets.only(top: 20),
          //   width: 200,
          //   height: 35,
          //   child: CupertinoTextField(
          //     placeholder: 'ios输入框，请输入',
          //     onChanged: (text) {
          //       print('change $text');
          //     },
          //   ),
          // ),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: 200,
            height: 30,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFFFF0000),
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(10),
              // shape: BoxShape.circle,//枚举 圆、方形
            ),
            child: Center(child: Text('设置边框')),
          ),
          FlatButton(
            onPressed: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return earthListPage();
              })),
            },
            color: Colors.blue,
            textColor: Colors.white,
            child: Text('进入下个页面'),
          ),
          Container(
            alignment: Alignment.topRight,
            child: Text('右上角'),
          ),
        ]);
  }

  Row buildButtonSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        buildButtonColumn('item1adfaaf'),
        buildButtonColumn('item2ffsafdfadfasfasfafafasdfafasfafafa'),
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
            child: Text(
              name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}

//吸底的效果
// body: Column(
//         children: <Widget>[
//           Expanded(
//             child: Container(),
//           ),
//           Container(
//             child: TextField(
//                   decoration: InputDecoration(
//                       border: InputBorder.none, hintText: 'Enter a search term'),
//                   onChanged: (text) {
//                     print('change $text');
//                   },
//             ),
//           ),
//         ],
//       ),
//     );
