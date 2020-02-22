import 'package:flutter/material.dart';

import 'earthListPage.dart';
import 'game_show.dart';
import 'mine/mine_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  static const List<String> _dataList = [
    '控件集合',
    '仿币世界',
    '仿今日头条',
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('首页'),
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.separated(
            itemCount: _dataList.length,
            itemBuilder: (BuildContext context, int index) {
              return buildListCell(context, index);
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider(
                color: Colors.grey,
                height: 1.0,
                indent: 0,
              );
            },
          ),
        ),
      ),
    );
  }

  Widget buildListCell(BuildContext context, int index) {
    String title = _dataList[index];
    return Material(
      //加这层嵌套 为了兼容cuptertino
      child: Container(
        height: 120,
        color: Colors.white,
        child: ListTile(
          onTap: () => {
            clickCell(context, index),
          },
          title: Align(
            alignment: Alignment.centerLeft,
            child: Text('$title'),
          ),
        ),
      ),
    );
  }

  void clickCell(BuildContext context, int index) {
    if (index == 0) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return GameShow(name: '测试name', pwd: '1234');
      }));
    } else if (index == 1) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return earthListPage();
      }));
    } else if (index == 2) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Scaffold(
          appBar: new AppBar(
            title: new Text('仿今日头条'),
          ),
          body: MinePage(),
        );
      }));
    }
  }
  // Widget buildListCell(int index) {
  //   return GestureDetector(
  //     behavior: HitTestBehavior.opaque,
  //     onTap: () => {
  //       print('click '),
  //     },
  //     child: Container(
  //       height: 80,
  //       child: Align(
  //         alignment: Alignment.centerLeft,
  //         child: Text('test'),
  //       ),
  //     ),
  //   );
  // }
}
