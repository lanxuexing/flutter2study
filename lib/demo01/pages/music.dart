import 'package:flutter/material.dart';

class MusicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MusicPage'),
      ),
      body: Center(
        child: Text('音乐'),
      ),
    );
  }
}