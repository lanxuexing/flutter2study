import 'package:flutter/material.dart';
import 'dynamic_page.dart';

class MyBottomNavigatorBar extends StatefulWidget {
  _MyBottomNavigatorBarState createState() => _MyBottomNavigatorBarState();
}

class _MyBottomNavigatorBarState extends State<MyBottomNavigatorBar> {
  List<Widget> _views;
  int _index = 0;

  @override
  void initState() {
    _views = List();
    _views..add(DynamicPage('消息'))..add(DynamicPage('世界')); // 动态创建页面
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) {
              return DynamicPage('随拍');
            }
          ));
        },
        tooltip: 'add',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(), // 圆形缺口
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.message),
              color: _index == 0 ? Colors.orangeAccent : Colors.white,
              onPressed: (){
                setState(() {
                  _index = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.work),
              color: _index == 1 ? Colors.orangeAccent : Colors.white,
              onPressed: (){
                setState(() {
                  _index = 1;
                });
              },
            )
          ],
        ),
      ),
      body: _views[_index],
    );
  }
}