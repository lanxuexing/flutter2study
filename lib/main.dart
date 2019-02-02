/**
 * 1.Hello World Demo
 */
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Welome to Fultter'),
//         ),
//         body: Center(
//           child: Text('Im am Flutter Content'),
//         ),
//       ),
//     );
//   }
// }

/**
 * 2.Text Widget
 */
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Text Widget Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text(
            '新华社北京2月1日电  中华民族传统节日农历春节来临之际，中共中央总书记、国家主席、中央军委主席习近平在北京看望慰问基层干部群众，考察北京冬奥会、冬残奥会筹办工作，向全国各族人民致以美好的新春祝福，祝各族人民幸福安康，祝伟大祖国繁荣吉祥。',
            textAlign: TextAlign.justify,
            maxLines: 3,
            overflow: TextOverflow.ellipsis, // 设置文字溢出...表示
            style: TextStyle(
              color: Color.fromARGB(255, 255, 125, 125),
              decoration: TextDecoration.underline,
              decorationColor: Color(0xff2b98f0),
              fontSize: 14.0
            ),
          ),
        ),
      ),
    );
  }
}