import 'package:flutter/material.dart';
import 'dart:math' as Math;

class ConstrainedWidget extends StatelessWidget {
  final Widget redBox = DecoratedBox(
    decoration: BoxDecoration(color: Colors.red),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ConstrainedBox和SizedBox'),
      ),
      body: Column(
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: double.infinity, //宽度尽可能大
              minHeight: 50.0 //最小高度为50像素
            ),
            child: Container(
              color: Colors.red,
              height: 5.0,
              child: Text('11111')
            ),
          ),
          SizedBox(
            width: 80.0,
            height: 80.0,
            child: DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0),
              child: UnconstrainedBox(
                child: ConstrainedBox(
                constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0),
                child: redBox,
              ),
            )
          ),
          ConstrainedBox(
            constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0),
              child:ConstrainedBox( // 去除父级限制
                constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0),
                child: redBox,
              )
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors:[Colors.red,Colors.orange[700]]), //背景渐变
              borderRadius: BorderRadius.circular(3.0), //3像素圆角
              boxShadow: [ //阴影
                BoxShadow(
                    color:Colors.black54,
                    offset: Offset(2.0,2.0),
                    blurRadius: 4.0
                )
              ]
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
              child: Text("Login", style: TextStyle(color: Colors.white),),
            )
          ),
          Container(
            color: Colors.black,
            child: Transform(
              alignment: Alignment.topRight,
              transform: Matrix4.skewY(0.3),
              child: Container(
                color: Colors.deepOrange,
                child: Text('Hello World!'),
              ),
            ),
          ),
          Container(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.lightBlue
              ),
              child: Transform.translate( // 平移
                offset: Offset(-20.0, 0.0),
                child: Text('Hello World!'),
              ),
            ),
          ),
          Container(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.deepPurple
              ),
              child: Transform.rotate(
                angle: Math.pi / 2,
                child: Text('How Are You!'),
              ),
            ),
          ),
          Container(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.blueGrey
              ),
              child: Transform.scale(
                scale: 1.2,
                child: Text("Hello world"),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.green
                ),
                child: RotatedBox(
                  quarterTurns: 1,
                  child: Text('Hello World!'),
                )
              ),
              Text('你好'),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 120.0), // 容器外补白
            constraints: BoxConstraints.tightFor(
              width: 150.0,
              height: 70.0
            ),
            transform: Matrix4.rotationZ(.2),
            decoration: BoxDecoration(
              gradient: RadialGradient( // 背景径向渐变
                colors: [Colors.red, Colors.orange],
                center: Alignment.topLeft,
                radius: .98,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(2.0, 2.0),
                  blurRadius: 4.0
                )
              ],
            ),
            alignment: Alignment.center, // 文字居中
            child: Text(
              '520',
              style:TextStyle(
                color: Colors.white,
                fontSize: 40.0,
              )
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0), // 容器外补白
            color: Colors.purpleAccent,
            child: Text('Heelo WOrld!'),
          ),
          Container(
            padding: EdgeInsets.all(10.0), // 容器内补白
            color: Colors.greenAccent,
            child: Text('Hello World!'),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.yellow
              ),
              child: Text('Hello World!'),
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.pinkAccent,
            ),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Hello World!'),
            ),
          ),
          Spacer()
        ],
      ),
    );
  }
}