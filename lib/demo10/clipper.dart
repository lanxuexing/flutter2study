import 'package:flutter/material.dart';

class ClipperPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clipper Demo'),
      ),
      body: Column(
        children: <Widget>[
          ClipPath( // 路径裁切部件
            clipper: MyClipper(),
            child: Container(
              color: Colors.deepPurpleAccent,
              height: 200.0,
            ),
          )
        ],
      ),
    );
  }
}

// 自定义裁切
class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0); // 第一个点
    path.lineTo(0, size.height - 40); // 第二个点
    var startControlPoint = Offset(size.width / 2, size.height); // 贝塞尔曲线控制点
    var endControlPoint = Offset(size.width, size.height - 40); // 贝塞尔曲线结束点
    path.quadraticBezierTo(startControlPoint.dx, startControlPoint.dy, endControlPoint.dx, endControlPoint.dy); // 贝塞尔曲线
    path.lineTo(size.width, size.height - 40); //  第三个点
    path.lineTo(size.width, 0); // 第四个点
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }

}