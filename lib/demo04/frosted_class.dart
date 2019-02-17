import 'package:flutter/material.dart';
import 'dart:ui';

class MyFrostedClassPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Stack(
          children: <Widget>[
            ConstrainedBox( // 约束盒子部件
              constraints: const BoxConstraints.expand(),
              child: Image.network('http://img18.3lian.com/d/file/201708/29/b827b5285e2fb7792755d958ec620ff4.jpg'),
            ),
            Center(
              child: ClipRect( // 可裁切矩形
                child: BackdropFilter( // 背景过滤器
                  filter: ImageFilter.blur(
                    sigmaX: 5.0,
                    sigmaY: 5.0
                  ),
                  child: Opacity(
                    opacity: 0.2,
                    child: Container(
                      width: 500.0,
                      height: 800.0,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200
                      ),
                      child: Center(
                        child: Text(
                          '荷兰',
                          style: Theme.of(context).textTheme.display3, // 字体主题
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
