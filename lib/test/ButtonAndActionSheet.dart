import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  ScrollController _controller = ScrollController();


  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    // Timer(Duration(milliseconds: 300), ()=>_controller.jumpTo(_controller.position.minScrollExtent));

    return Scaffold(
      appBar: AppBar(
        title: Text('二级页吧'),
      ),
      // body: SingleChildScrollView(
      body: Container (
        child: Column(
          children: <Widget>[
            // DetailHeadPage(widget.user),
            Container(
              padding: EdgeInsets.only(left: 20, top:0, right: 20),
              child: Row(
                children: <Widget>[
                  CupertinoButton(
                    color: Colors.blue,
                    child: Text('button'),
                    onPressed: () {
                      showCupertinoModalPopup<void>(
                        context: context,
                        builder: (context) {
                          return CupertinoActionSheet(
                            title: Text('dialogtitle'),
                            message: Text('hahaha'),
                            actions: <Widget>[
                              CupertinoActionSheetAction(
                                child: Text('1111'),
                                isDefaultAction: true,
                                onPressed: ()=> print('11111'),
                              ),
                              CupertinoActionSheetAction(
                                child: Text('2222'),
                                isDefaultAction: true,
                                onPressed: ()=> print('11111'),
                              ),
                            ],
                          );
                        }
                      );
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 0, top:0, right: 0, bottom: 0),
                color: Colors.white,
                child: Row (
                  children: <Widget>[
                    Container(
                      width: 140,
                      // height: screenHeight - 130,
                      // color: Colors.yellow,
                      child: ListView.separated(
                        itemBuilder: (context, i) {
                          return Container(
                            child: ListTile(
                              title: Text(
                                '市场公关后期$i',
                                style: TextStyle(
                                  // color: _selectedIndex == i ? Colors.white : Colors.black,
                                  color: _selectedIndex == i ? Color(0xFF2A79FF) : Color(0xFF111111),
                                ),
                              ),
                              onTap: () {
                                _chooseListView1(i);
                              },
                            )
                          ); 
                        },
                        separatorBuilder: (context, index) => new Divider(),
                        itemCount: 20,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Color(0xFFFAFBFC),
                        child: ListView.builder(
                          controller: _controller,
                          itemBuilder: (context, i) {
                            return Container(
                              child: ListTile(
                                title: Text('销售助理${_selectedIndex}_${i}'),
                                onTap: () {
                                  print('select index ${_selectedIndex}_${i}');
                                },
                              )
                            );
                          },
                          itemCount: 20,
                        ),
                      ),
                    )
                    
                  ],
                ),
                
              ),
            ),
          ],
        ),
      ),
    );
  }
  void _chooseListView1(index) {
    setState(() {
      _selectedIndex = index;
    });
    //滚动至顶部
    _controller.jumpTo(_controller.position.minScrollExtent);
  }
}


Container buildCard(String str1, String str2, String str3, String str4) {
  return Container(
    // color: Colors.blueGrey,
    width: 100,
    decoration: BoxDecoration(
      color: Colors.blueGrey,
      borderRadius: BorderRadius.all(Radius.circular(4)),
    ),
    child: Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 5)),
        Text(
          str1,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            // fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          str2,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            // fontWeight: FontWeight.w500,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 0),
          child: Text(
            '__',
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
              // fontWeight: FontWeight.w500,
            ),
          ),
        ),
        
        Text(
          str3,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            // fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          str4,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            // fontWeight: FontWeight.w500,
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 5)),
      ],
    )
  );
}