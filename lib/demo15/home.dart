import 'package:flutter/material.dart';
import 'draggable.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _draggableColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          MyDraggable(
            mOffset: Offset(80.0, 80.0),
            mColor: Colors.deepPurple,
          ),
          MyDraggable(
            mOffset: Offset(180.0, 80.0),
            mColor: Colors.deepOrange,
          ),
          Center(
            child: DragTarget(
              onAccept: (Color color) {
                _draggableColor = color;
              },
              builder: (context, candidateDate, rejectedDate) {
                return Container(
                  width: 200.0,
                  height: 200.0,
                  color: _draggableColor,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}