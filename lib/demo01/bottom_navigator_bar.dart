import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/email.dart';
import 'pages/video.dart';
import 'pages/music.dart';

class MyBottomNavigationBar extends StatefulWidget {
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  final _navigationBarColor = Color(0xFF4895ec);
  int _curentIndex = 0;
  List<Widget> itemList = List();

  @override
  void initState() {
    itemList..add(HomeScreen())..add(EmailScreen())..add(VideoScreen())..add(MusicScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: itemList[_curentIndex], // 内容主体
      bottomNavigationBar: BottomNavigationBar( // 底部导航栏
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _navigationBarColor,
            ),
            title: Text(
              '首页',
              style: TextStyle(
                color: _navigationBarColor
              )
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: _navigationBarColor,
            ),
            title: Text(
              '邮件',
              style: TextStyle(
                color: _navigationBarColor
              )
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_call,
              color: _navigationBarColor,
            ),
            title: Text(
              '视频',
              style: TextStyle(
                color: _navigationBarColor
              )
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.queue_music,
              color: _navigationBarColor,
            ),
            title: Text(
              '音乐',
              style: TextStyle(
                color: _navigationBarColor
              )
            )
          ),
        ],
        onTap: (int index) {
          setState(() {
            _curentIndex = index;
          });
        },
        currentIndex: _curentIndex,
      ),
    );
  }
}