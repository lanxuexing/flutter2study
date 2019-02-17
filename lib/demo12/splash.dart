import 'package:flutter/material.dart';
import 'home.dart';

class SplashPage extends StatefulWidget {
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin {
  AnimationController _controller; // 动画控制器
  Animation _animation; // 动画

  @override
  void initState() {
    super.initState();
    _controller =AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 3000),
    );
    _animation =Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);
    _animation.addStatusListener((status) { // 动画监听器
      if (status ==AnimationStatus.completed) {
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
          builder: (context) => HomePage()),
          (route) => route == null,
        );
      }
    });
    _controller.forward(); // 播放动画
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose(); // 删除动画
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Image.network('http://img.zcool.cn/community/0129935541f41d000001714a1c600a.jpg@1280w_1l_2o_100sh.png'),
    );
  }
}