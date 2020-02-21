import 'package:flutter/material.dart';

class earthListPage extends StatelessWidget {
  const earthListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('币世界'),
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return buildListCell(index);
            },
          ),
        ),
      ),
    );
  }

  //每个cell
  Widget buildListCell(int index) {
    return Container(
      height: 280,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              '12:16',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              'Eth大崩溃，散户们纷纷割肉，呜呼唉哉！资金发生异动，2371个ETH被转移 $index',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              maxLines: 2,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              '干得好！诬夺厢式工是是需要鞋里菲格是需要鞋里菲格是需要鞋里菲格是需要鞋里菲格是需要鞋里菲格是需要鞋里菲格是需要鞋里菲格是需要鞋里菲格是需要鞋里菲格是需要鞋里菲格是需要鞋里菲格需要鞋里菲格雷斯标题基本都是基本都是基本都是茜茜鞋柜里鞋柜里晓楠晓楠蓝票jafa载恭喜晒革在城城城震工工$index',
              style: TextStyle(
                fontSize: 15,
              ),
              maxLines: 5,
            ),
          ),
          //价格波动
          buildPrice(),
          Row(
            children: <Widget>[
              buildButtonIcoin('看多 21'),
              SizedBox(
                width: 20,
              ),
              buildButtonIcoin('看空 20'),
              buildButtonIcoin('7'),
            ],
          ),
        ],
      ),
    );
  }

  void click(int smallIndex) {
    // setState(() {
    //       if(smallIndex == 0) {
    //         _clickOne = !_clickOne;
    //       } else if(smallIndex == 1) {
    //         _clickTwo = !_clickTwo;
    //       } else if(smallIndex == 2) {
    //         _clickThree = !_clickThree;
    //       }
    //     });
  }

  //看空看多图标按钮
  Widget buildButtonIcoin(String label) {
    // return FlatButton.icon(
    //   padding: EdgeInsets.all(0),

    //   onPressed: () => {},
    //   label: Text('看空'),
    //   icon: Icon(
    //     Icons.star_border,
    //     color: Colors.grey,
    //   ),
    // );

    return GestureDetector(
      onTap: () => {
        print('click me'),
      },
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: EdgeInsets.only(top: 5),
        width: 100,
        child: Row(
          children: <Widget>[
            Icon(
              Icons.star_border,
              color: Colors.grey,
              size: 18,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4, top: 1),
              child: Text(
                '$label',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //价格
  Widget buildPrice() {
    return Row(
      children: <Widget>[
        buildPriceCell('ZRX -7.21%'),
        buildPriceCell('ZRX -7.21%'),
        buildPriceCell('ZRX -7.21%'),
      ],
    );
  }

  Padding buildPriceCell(String price) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, right: 10),
      child: Container(
        color: Color.fromRGBO(255, 0, 0, 0.05),
        padding: EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
        child: Text(
          '$price',
          style: TextStyle(
            fontSize: 11,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
