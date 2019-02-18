import 'package:flutter/material.dart';

class LayoutPage extends StatelessWidget {
  final editableText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Demo'),
      ),
      body: ListView(
        children: <Widget>[
          // 1.导航器
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // 主轴方向
            crossAxisAlignment: CrossAxisAlignment.center, // 副轴方向
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(
                    Icons.radio,
                    color: Colors.blue,
                  ),
                  Text('录音机'),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.video_call,
                    color: Colors.blue,
                  ),
                  Text('视频')
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.queue_music,
                    color: Colors.blue,
                  ),
                  Text('音乐')
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.phonelink_ring,
                    color: Colors.blue,
                  ),
                  Text('通讯录')
                ],
              )
            ],
          ),
          // 2.新闻条目
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            padding: EdgeInsets.symmetric(vertical: 10.0),
            decoration: BoxDecoration(
              border: BorderDirectional(
                top: BorderSide(color: Colors.grey),
                bottom: BorderSide(color: Colors.grey),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 80.0,
                  height: 80.0,
                  color: Colors.grey,
                  child: Icon(
                    Icons.photo,
                    size: 80.0,
                  ),
                  margin: EdgeInsets.only(left: 10.0),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // ListTile(
                      //   title: Text('这里是新闻标题'),
                      //   subtitle: Text('这里是新闻摘要部分'),
                      // )
                      Text(
                        '钢铁侠',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                      Text(
                        '美国漫威电影公司',
                        style: TextStyle(fontSize: 12.0, color: Colors.black38),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 80.0),
                  child: Text('2019-02-17'),
                ),
              ],
            ),
          ),
          // 3.输入框 -- EditableText
          Container(
            width: 300.0,
            height: 30.0,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(20.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: Icon(Icons.radio),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 10.0),
                      width: 240.0,
                      height: 30.0,
                      child: EditableText(
                        controller: editableText,
                        cursorColor: Colors.redAccent,
                        focusNode: FocusNode(),
                        style: TextStyle(),
                        backgroundCursorColor: Colors.lightBlue,
                        onChanged: (result) {
                          print(result);
                          print('您输入的是：' + editableText.text);
                        },
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  child: Icon(Icons.textsms),
                ),
              ],
            ),
          ),
          // 4.输入框 -- TextField
          Container(
            width: 300.0,
            height: 30.0,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: TextField(
              controller: TextEditingController(),
              focusNode: FocusNode(),
              autofocus: false,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.arrow_forward),
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0)
                ),
                labelText: '请输入你的密码',
                helperText: '',
                contentPadding: EdgeInsets.symmetric(vertical: 10.0)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
