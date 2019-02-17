import 'package:flutter/material.dart';

class LayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Demo'),
      ),
      body: ListView(
        children: <Widget>[
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
          Row(
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
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black
                      ),
                    ),
                    Text(
                      '美国漫威电影公司',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black38
                      ),
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
        ],
      ),
    );
  }
}
