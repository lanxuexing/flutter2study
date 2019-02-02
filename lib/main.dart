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
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Text Widget Demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Welcome to Flutter'),
//         ),
//         body: Center(
//           child: Text(
//             '新华社北京2月1日电  中华民族传统节日农历春节来临之际，中共中央总书记、国家主席、中央军委主席习近平在北京看望慰问基层干部群众，考察北京冬奥会、冬残奥会筹办工作，向全国各族人民致以美好的新春祝福，祝各族人民幸福安康，祝伟大祖国繁荣吉祥。',
//             textAlign: TextAlign.justify,
//             maxLines: 3,
//             overflow: TextOverflow.ellipsis, // 设置文字溢出...表示
//             style: TextStyle(
//               color: Color.fromARGB(255, 255, 125, 125),
//               decoration: TextDecoration.underline,
//               decorationColor: Color(0xff2b98f0),
//               fontSize: 14.0
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

/**
 * 3.Container Widget
 */
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Container Widget Demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Welcome to Flutter'),
//         ),
//         body: Center( // 这里是要将整体居中放置
//           child: Container(
//             child: new Text('新华社北京2月1日电  中华民族传统节日农历春节来临之际，中共中央总书记、国家主席、中央军委主席习近平在北京看望慰问基层干部群众，考察北京冬奥会、冬残奥会筹办工作，向全国各族人民致以美好的新春祝福，祝各族人民幸福安康，祝伟大祖国繁荣吉祥。'),
//             alignment: Alignment.center,
//             // color: Color(0xffc9c9c9), // 使用装饰器decoration设置颜色的时候必须移除color属性，否则报错
//             width: 400.0,
//             height: 200.0,
//             margin: const EdgeInsets.all(20.0),
//             padding: const EdgeInsets.all(10.0), // 以上是设置容器的宽、高、颜色、内边距、外边距、内容对其方式
//             decoration: new BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [
//                   const Color(0xFF3366FF),
//                   const Color(0xFF00CCFF)
//                 ],
//                 begin: const FractionalOffset(0.0, 0.0),
//                 tileMode: TileMode.clamp
//               )
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

/**
 * 4.Image Widget
 */
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Image Widget Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Container(
            child: Image.network(
              'https://avatars2.githubusercontent.com/u/20652750?s=460&v=4',
              width: 80.0,
              height: 80.0,
              // fit: BoxFit.fitHeight, // 填充属性
              color: Colors.lightBlue,
              colorBlendMode: BlendMode.overlay, // 混合颜色
              repeat: ImageRepeat.repeat, // 平铺属性，是否重复等
            ),
            width: 400.0,
            height: 200.0,
            color: Colors.deepOrange,
          ),
        ),
      ),
    );
  }

}