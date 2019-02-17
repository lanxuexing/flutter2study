import 'package:flutter/material.dart';

class MyDraggable extends StatefulWidget {
  final Offset mOffset; // 位置
  final Color mColor; // 颜色

  MyDraggable({
    Key key,
    @required this.mOffset,
    @required this.mColor
  }):super(key: key);

  _MyDraggableState createState() => _MyDraggableState();
}

class _MyDraggableState extends State<MyDraggable> {
  Offset offset =Offset(0.0, 0.0);

  @override
  void initState() {
    offset = widget.mOffset;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: offset.dx,
      top: offset.dy,
      child: Draggable(
        data: widget.mColor, // 拖拽的数据
        child: Container(
          width: 100.0,
          height: 100.0,
          color: widget.mColor,
        ),
        feedback: Container( // 正在拖拽
          width: 120.0,
          height: 120.0,
          color: widget.mColor.withOpacity(0.5),
        ),
        onDraggableCanceled: (Velocity velocity, Offset offset) { // 拖拽结束
          setState(() {
            this.offset = offset;
          });
        },
      ),
    );
  }
}