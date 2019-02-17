import 'package:flutter/material.dart';

class MyRouter extends PageRouteBuilder {
  final Widget widget;

  MyRouter(this.widget):super(
    transitionDuration: Duration(seconds: 1),
    pageBuilder: (
      BuildContext context,
      Animation<double> animation1,
      Animation<double> animation2
    ) {
      return widget;
    },
    transitionsBuilder: (
      BuildContext context,
      Animation<double> animation1,
      Animation<double> animation2,
      Widget widget
    ) {
      // 1.第一种动画：渐隐渐显
      // return FadeTransition(
      //   opacity: Tween(
      //     begin: 0.0,
      //     end: 1.0,
      //   ).animate(CurvedAnimation(
      //     parent: animation1, // 父级动画
      //     curve: Curves.fastOutSlowIn, // 动画曲线
      //   )),
      //   child: widget, // 这里有一个坑，必须要返回一个child
      // );

      // 2.第二种动画：缩放
      // return ScaleTransition(
      //   scale: Tween(
      //     begin: 0.0,
      //     end: 1.0,
      //   ).animate(CurvedAnimation(
      //     parent: animation1,
      //     curve: Curves.fastOutSlowIn
      //   )),
      //   child: widget, // 这里有一个坑，必须要返回一个child
      // );

      // 3.旋转+缩放
      // return RotationTransition(
      //   turns: Tween(
      //     begin: 0.0,
      //     end: 1.0,
      //   ).animate(CurvedAnimation(
      //     parent: animation1,
      //     curve: Curves.fastOutSlowIn,
      //   )),
      //   child: ScaleTransition(
      //     scale: Tween(
      //       begin: 0.0,
      //       end: 1.0,
      //     ).animate(CurvedAnimation(
      //       parent: animation1,
      //       curve: Curves.fastOutSlowIn
      //     )),
      //     child: widget, // 这里有一个坑，必须要返回一个child
      //   ),
      // );

      // 4.滑进推出(左右切换)
      return SlideTransition(
        position: Tween(
          begin: Offset(-1.0, 0.0),
          end: Offset(0.0, 0.0),
        ).animate(CurvedAnimation(
          parent: animation1,
          curve: Curves.fastOutSlowIn,
        )),
        child: widget,
      );
    }
  );
}