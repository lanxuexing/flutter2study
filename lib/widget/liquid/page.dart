import 'package:flutter/material.dart';
import 'button.dart';

class LiquidPage extends StatefulWidget {
  _LiquidPageState createState() => _LiquidPageState();
}

class _LiquidPageState extends State<LiquidPage> with TickerProviderStateMixin {
  GlobalKey<LiquidButtonState> globalKey = GlobalKey();
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
      // 创建动画
      vsync: this,
      duration: Duration(milliseconds: 6000),
    )..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose(); // 销毁动画
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liquid'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: LiquidButton(
                    key: globalKey,
                    progress: _controller.value,
                    size: Size(200.0, 200.0),
                    onDownLoadStart: () {
                      _controller.reset();
                      _controller.forward();
                    },
                  ),
                ),
                Container(
                  width: 40.0,
                  height: 10.0,
                  child: Text('${(_controller.value * 100).round()} %'),
                )
              ],
            ),
          ),
          FlatButton(
            color: Colors.pinkAccent,
            onPressed: () {
              globalKey.currentState.resetStatus();
            },
            child: Text(
              'reset',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

// 进度
class Progress {
  final double start;
  final double end;
  Progress(this.start, this.end);
}
