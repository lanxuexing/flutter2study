import 'package:flutter/material.dart';

class MyCurveClipper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Curve Clipper Demo'),
      ),
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              height: 200.0,
              color: Colors.deepPurpleAccent,
            ),
          ),
        ],
      ),
    );
  }
}

// 自定义曲线裁切
class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path =Path();
    path.lineTo(0, 0); // 第一个点
    path.lineTo(0, size.height - 40); // 第二个点
    var firstStartControlPoint = Offset(size.width / 4, size.height); // 第一段贝塞尔曲线控制点
    var firstEndControlPoint = Offset(size.width / 2.25, size.height - 40); // 第一段贝塞尔曲线结束点
    path.quadraticBezierTo(
      firstStartControlPoint.dx,
      firstStartControlPoint.dy,
      firstEndControlPoint.dx,
      firstEndControlPoint.dy
    ); // 第一段贝塞尔曲线
    var secondStartControlPoint = Offset(size.width / 4 * 3, size.height - 80); // 第二段贝塞尔曲线控制点
    var secondEndControlPoint = Offset(size.width, size.height - 40); // 第二段贝塞尔曲线结束点
    path.quadraticBezierTo(
      secondStartControlPoint.dx,
      secondStartControlPoint.dy,
      secondEndControlPoint.dx,
      secondEndControlPoint.dy
    ); // 第二段贝塞尔曲线
    path.lineTo(size.width, size.height - 80); // 第三个点
    path.lineTo(size.width, 0); // 第四个点
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
  
}