import 'package:flutter/material.dart';

class MyToolTip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tool Tip Demo'),
      ),
      body: Center(
        child: Tooltip(
          child: Image.network('https://avatars0.githubusercontent.com/u/20652750?s=400&u=f551621c2f65663d6177cb3a7575c8e9eb1b0e47&v=4'),
          message: 'that girl',
        ),
      ),
    );
  }
}