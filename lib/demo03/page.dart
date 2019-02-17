import 'package:flutter/material.dart';
import 'router.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        title: Text(
          'First Page',
          style: TextStyle(
            fontSize: 36.0
          ),
        ),
        elevation: 4.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 64.0
          ),
          onPressed: () {
            Navigator.of(context).push(MyRouter(SecondPage()));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text(
          'Second Page',
          style: TextStyle(
            fontSize: 36.0
          ),
        ),
        elevation: 4.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 64.0
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}