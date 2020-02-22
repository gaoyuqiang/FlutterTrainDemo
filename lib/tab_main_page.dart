import 'package:flutter/material.dart';

import 'home_page.dart';
import 'mine/mine_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: TabHomePage(),
    );
  }
}

class TabHomePage extends StatefulWidget {
  TabHomePage({Key key}) : super(key: key);
  @override
  _TabHomePage createState() => _TabHomePage();
}

class _TabHomePage extends State<TabHomePage>
    with SingleTickerProviderStateMixin {
  List tabs = ['首页', 'test', '我的'];
  int _currentIndex = 0;
  List<Widget> _pages = [];
  @override
  void initState() {
    super.initState();
    _pages
      ..add(HomePage())
      ..add(Text('待加'))
      ..add(MinePage());

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        //因为每个页面都有自己的appBar 先注释掉
        // appBar: AppBar(
        //   title: Text('Material App Bar'),
        // ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.blue,
              ),
              title: Text('首页'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.alarm_add,
                color: Colors.blue,
              ),
              title: Text('待加'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.airplay,
                color: Colors.blue,
              ),
              title: Text('我的'),
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
        ),
        body: _pages[_currentIndex],
      ),
    );
  }
}
