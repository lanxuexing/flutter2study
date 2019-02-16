import 'package:flutter/material.dart';

class VideoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VideoPage'),
      ),
      body: Center(
        child: Text('视频'),
      ),
    );
  }
}