import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  MinePage({Key key}) : super(key: key);

  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   child: Container(
    //     width: 89,
    //     height: 89,
    //     color: Colors.red,
    //     child: Text('hhahahhaha'),
    //   ),
    return ListView(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20),
            buildTop(),
            // 历史记录
            SizedBox(height: 30),
            buildHistory(),
            //功能模块
            buildFunction('常用功能'),
            buildFunction('作者工具'),
            buildFunction('更多功能'),
          ],
        )
      ],
    );
  }

  Widget buildTop() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
            child: Row(
          children: <Widget>[
            SizedBox(width: 20),
            ClipOval(
              child: Image.asset(
                'images/logo.png',
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, top: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        '影视果汁',
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 15,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      buildButtonIcoin('头条'),
                      buildButtonIcoin('关注'),
                      buildButtonIcoin('粉丝'),
                    ],
                  )
                ],
              ),
            ),
          ],
        )),
        Container(
          height: 25,
          padding: EdgeInsets.only(left: 10, right: 5),
          // color: Colors.pink,
          alignment: Alignment.centerRight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.5),
              bottomLeft: Radius.circular(12.5),
            ),
            color: Color.fromRGBO(255, 0, 0, 0.2),
          ),
          child: Text(
            '申请认证',
            style: TextStyle(fontSize: 11, color: Colors.red),
          ),
        ),
      ],
    );
  }

  //看空看多图标按钮
  Widget buildButtonIcoin(String label) {
    return GestureDetector(
      onTap: () => {
        print('click me'),
      },
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: EdgeInsets.only(top: 5, right: 10),
        child: Row(
          children: <Widget>[
            Text(
              '$label',
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4, top: 1),
              child: Text(
                '40',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHistory() {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 20, top: 0),
                child: Text('放映厅', style: TextStyle(fontWeight: FontWeight.w500),),
              ),
            ),
            GestureDetector(
              onTap: () => {
                print('click me'),
              },
              behavior: HitTestBehavior.opaque,
              child: Container(
                padding: EdgeInsets.only(right: 10),
                child: Row(
                  children: <Widget>[
                    Text(
                      '查看全部',
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4, top: 1),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 100,
          child: buildHIstoryListView(),
        ),
      ],
    );
  }

  ListView buildHIstoryListView() {
    List<String> nameList = ['暗黑时刻','莫妮卡', '乘风破浪'];
    List<Widget> list = [];
    for (int i = 0; i < 10; i++) {
      list.add(buildHistoryCell(nameList[i%3]));
    }
    return ListView(
      scrollDirection: Axis.horizontal,
      children: list,
      // children: <Widget>[
      //   Text('hhe'),
      //   Text('hhe'),
      // ],
    );
  }

  Widget buildHistoryCell(String name) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.asset(
                'images/movie.jpeg',
                width: 120,
                height: 60,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 44,
                left: 2,
                child: Text(
                  '已看完',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 5),
            child: Text(
              '$name',
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFunctionCell(IconData iconData, String text) {
    return Container(
      // color: Colors.yellow,
      child: Column(
        children: <Widget>[
          SizedBox(height: 9),
          Icon(
            // Icons.alarm_on,
            iconData,
            color: Colors.black,
            size: 20,
          ),
          SizedBox(height: 5),
          Text(
            // '消息通知',
            '$text',
            style: TextStyle(fontSize: 13),
          ),
        ],
      ),
    );
  }

  Widget buildFunction(String title) {
    var size = MediaQuery.of(context).size;
    double itemWidth = 70;
    double itemHeight = 60;
    double mainSpace = 20;
    int crossCount = 4;
    double crossSpace =
        (size.width - 20 * 2 - crossCount * itemWidth) / (crossCount - 1);
    double ratio = itemWidth / itemHeight;
    return Container(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('$title', style: TextStyle(fontWeight: FontWeight.w500)),
          Container(
            margin: EdgeInsets.only(top: 10),
            // width: 300,
            height: itemHeight * 2 + mainSpace,
            child: GridView.count(
              crossAxisCount: crossCount,
              crossAxisSpacing: crossSpace,
              mainAxisSpacing: mainSpace,
              childAspectRatio: ratio,
              physics: const NeverScrollableScrollPhysics(),
              children: <Widget>[
                buildFunctionCell(Icons.alarm_on, '消息通知'),
                buildFunctionCell(Icons.email, '私信'),
                buildFunctionCell(Icons.star_border, '收藏'),
                buildFunctionCell(Icons.history, '阅读历史'),
                buildFunctionCell(Icons.wallpaper, '钱包'),
                buildFunctionCell(Icons.edit, '用户反馈'),
                buildFunctionCell(Icons.explore, '免流量服务'),
                buildFunctionCell(Icons.settings, '系统设置'),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:20),
            height: 4,
            color: Colors.grey[200],
            child: null,
          ),
        ],
      ),
    );
  }
}
