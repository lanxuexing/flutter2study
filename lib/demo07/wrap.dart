import 'package:flutter/material.dart';

class MyWrap extends StatefulWidget {
  _MyWrapState createState() => _MyWrapState();
}

class _MyWrapState extends State<MyWrap> {
  List<Widget> list;
  
  void initState() { 
    super.initState();
    list = List<Widget>()..add(createAddButton());
  }
    
  @override
  Widget build(BuildContext context) {
    final mWidth = MediaQuery.of(context).size.width; // 媒体查询获取设备屏幕的宽
    final mHeight = MediaQuery.of(context).size.height; // 媒体查询获取设备屏幕的高

    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap Demo'),
      ),
      body: Center(
        child: Opacity(
          opacity: 0.8,
          child: Container(
            width: mWidth,
            height: mHeight / 2,
            color: Colors.grey,
            child: Wrap(
              children: list,
              spacing: 25.0,
            ),
          ),
        ),
      ),
    );
  }
  
  // 创建ADD按钮
  Widget createAddButton() {
    return GestureDetector(
      onTap: () {
        if (list.length < 9) {
          setState(() {
            list.insert(list.length - 1, createPhoto());
          });
        }
      },
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Container(
          width: 80.0,
          height: 80.0,
          color: Colors.black54,
          child: Icon(
            Icons.add
          ),
        ),
      ),
    );
  }

  // 动态创建照片容器
  Widget createPhoto() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: 80.0,
        height: 80.0,
        color: Colors.deepPurple,
        child: Center(
          child: Text('照片'),
        ),
      ),
    );
  }
}