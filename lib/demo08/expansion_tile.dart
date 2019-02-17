import 'package:flutter/material.dart';

class MyExpansionTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionTile Demo'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey[300]
            ),
          ),
          child: ExpansionTile(
            leading: Icon(Icons.video_call),
            title: Text('美国漫威电影'),
            backgroundColor: Colors.grey[200],
            initiallyExpanded: false, // 初始化是否展开，默认式不展开卡片
            children: <Widget>[
              ListTile(
                title: Text('毒液：致命保护者'),
                subtitle: Text('漫威影业'),
              ),
              ListTile(
                title: Text('复仇者联盟3：无限战争'),
                subtitle: Text('漫威影业'),
              ),
              ListTile(
                title: Text('雷神3：诸神黄昏'),
                subtitle: Text('漫威影业'),
              ),
            ],
          ),
        )
      ),
    );
  }
}