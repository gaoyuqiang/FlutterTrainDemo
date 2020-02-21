import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'game_show.dart';
import 'home_page.dart';

bool get isInDebugMode {
  bool inDebugMode = false;
  assert(inDebugMode = true);
  return inDebugMode;
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  // Widget build(BuildContext context) {
  //   return new Scaffold(
  //     appBar: new AppBar(
  //       title: new Text(widget.title),
  //     ),
  //     body: GameShow(name:'a', pwd:'a'),
  //   );
  // }
  // @override
  Widget build(BuildContext context) {
    return HomePage();
  }

  // Widget build(BuildContext context) {
  //   return CupertinoPageScaffold(
  //     navigationBar: CupertinoNavigationBar(
  //       middle: Text('Cupertino App Bar'),
  //     ),
  //     child: GameShow(name: 'a', pwd: 'a'),
  //   );
  // }
}
