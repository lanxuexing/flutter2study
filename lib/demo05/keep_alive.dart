import 'package:flutter/material.dart';
import 'pages.dart';

class MyKeepAlive extends StatefulWidget {
  _MyKeepAliveState createState() => _MyKeepAliveState();
}

class _MyKeepAliveState extends State<MyKeepAlive> with SingleTickerProviderStateMixin { // with混入，初始化状态vsync
  TabController _controller;

  @override
  void initState() {
    _controller = TabController(
      length: 3,
      vsync: this
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keep Alive Demo'),
        bottom: TabBar(
          controller: _controller,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.directions_car),
            ),
            Tab(
              icon: Icon(Icons.directions_railway),
            ),
            Tab(
              icon: Icon(Icons.directions_bike),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          HomePage(),
          HomePage(),
          HomePage(),
        ],
      ),
    );
  }
}