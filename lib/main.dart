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
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Image Widget Demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Welcome to Flutter'),
//         ),
//         body: Center(
//           child: Container(
//             child: Image.network(
//               'https://avatars2.githubusercontent.com/u/20652750?s=460&v=4',
//               width: 80.0,
//               height: 80.0,
//               // fit: BoxFit.fitHeight, // 填充属性
//               color: Colors.lightBlue,
//               colorBlendMode: BlendMode.overlay, // 混合颜色
//               repeat: ImageRepeat.repeat, // 平铺属性，是否重复等
//             ),
//             width: 400.0,
//             height: 200.0,
//             color: Colors.deepOrange,
//           ),
//         ),
//       ),
//     );
//   }
// }

/**
 * 5.纵向ListView Widget
 */
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter ListView Widget Demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Welcome to Flutter')
//         ),
//         body: ListView(
//           children: <Widget>[
//             // 1.条目列表
//             ListTile(
//               leading: Icon(Icons.perm_camera_mic),
//               title: Text('perm_camera_mic'),
//             ),
//             ListTile(
//               leading: Icon(Icons.people_outline),
//               title: Text('people_outline'),
//             ),
//             ListTile(
//               leading: Icon(Icons.perm_device_information),
//               title: Text('perm_device_information'),
//             ),
//             // 2.图片列表
//             Image.network('http://jspang.com/static/upload/20181122/HyW5zTOSCOcwbPRcdRe0nazk.png'),
//             Image.network('http://jspang.com/static/upload/20181122/M08DUCVSaNMs9RYeWU6s8FX3.png'),
//             Image.network('http://jspang.com/static/upload/20181122/WBRmDXtAPF7vK-eXEwD1J9JF.png'),
//           ],
//         ),
//       ),
//     );
//   }
// }

/**
 * 6.横向ListView Widget
 */
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter ListView Demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Welcome to Flutter'),
//         ),
//         body: Center(
//           child: Container(
//             height: 200.0,
//             child: MyScrollListView(),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyScrollListView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       scrollDirection: Axis.horizontal, // 设置横向滚动
//       children: <Widget>[
//         Container(
//           width: 180.0,
//           color: Colors.lightBlue,
//         ),
//         Container(
//           width: 180.0,
//           color: Colors.lightGreen,
//         ),
//         Container(
//           width: 180.0,
//           color: Colors.deepOrange,
//         ),
//         Container(
//           width: 180.0,
//           color: Colors.deepPurple,
//         ),
//       ],
//     );
//   }
// }

/**
 * 7.动态ListView
 */
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp(
//   items: List<String>.generate(1000, (i) => 'This is Item $i')
// ));

// class MyApp extends StatelessWidget {
//   // 接收参数
//   final List<String> items;
//   MyApp({
//     Key key,
//     @required this.items
//   }):super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter ListView Demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Welcome to Flutter'),
//         ),
//         body: ListView.builder(
//           itemCount: items.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//               title: Text('${items[index]}'),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

/**
 * 8.GridView Widget
 */
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter GridView Demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Welcome to Flutter'),
//         ),
//         // 第一种：老写法
//         // body: GridView.count(
//         //   padding: EdgeInsets.all(10.0),
//         //   crossAxisSpacing: 10.0,
//         //   crossAxisCount: 3,
//         //   children: <Widget>[
//         //     Image.network('https://puui.qpic.cn/vcover_vt_pic/0/xmw2gfef226jygj1545625229/350'),
//         //     Image.network('https://puui.qpic.cn/vcover_vt_pic/0/brq7blajvjhrcit1545356133/350'),
//         //     Image.network('https://puui.qpic.cn/vcover_vt_pic/0/lupgsr321tvuj1a1548731403/350'),
//         //     Image.network('https://puui.qpic.cn/vcover_vt_pic/0/3bwbuaw7zs547tk1543892332/350'),
//         //     Image.network('https://puui.qpic.cn/vcover_vt_pic/0/m441e3rjq9kwpsc1531129675/350')
//         //   ],
//         // ),
//         // 第二种：新写法
//         body: GridView(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 3,
//             mainAxisSpacing: 5.0,
//             crossAxisSpacing: 2.0,
//             childAspectRatio: 0.7
//           ),
//           children: <Widget>[
//             Image.network('https://puui.qpic.cn/vcover_vt_pic/0/xmw2gfef226jygj1545625229/350', fit: BoxFit.cover),
//             Image.network('https://puui.qpic.cn/vcover_vt_pic/0/brq7blajvjhrcit1545356133/350', fit: BoxFit.cover),
//             Image.network('https://puui.qpic.cn/vcover_vt_pic/0/lupgsr321tvuj1a1548731403/350', fit: BoxFit.cover),
//             Image.network('https://puui.qpic.cn/vcover_vt_pic/0/3bwbuaw7zs547tk1543892332/350', fit: BoxFit.cover),
//             Image.network('https://puui.qpic.cn/vcover_vt_pic/0/m441e3rjq9kwpsc1531129675/350', fit: BoxFit.cover),
//             Image.network('https://puui.qpic.cn/vcover_vt_pic/0/brq7blajvjhrcit1545356133/350', fit: BoxFit.cover)
//           ],
//         ),
//       ),
//     );
//   }
// }

/**
 * 9.Row Widget
 */
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Row Demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Welcome to Fultter'),
//         ),
//         body: Row(
//           children: <Widget>[
//             Expanded(
//               child: RaisedButton(
//                 onPressed: () {},
//                 color: Colors.deepPurple,
//                 child: Text('Purple Btn'),
//               ),
//             ),
//             Expanded(
//               child: RaisedButton(
//               onPressed: () {},
//               color: Colors.deepOrange,
//               child: Text('Orange Btn'),
//             )),
//             Expanded(
//               child: RaisedButton(
//               onPressed: () {},
//               color: Colors.greenAccent,
//               child: Text('Accent Btn'),
//             )),
//           ],
//         ),
//       ),
//     );
//   }
// }

/**
 * 10.Column Widget
 */
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Column Demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Welcome to Flutter'),
//         ),
//         body: Center(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               ListTile(
//                 title: Text('知否知否应是绿肥红瘦'),
//                 subtitle: Text('赵丽颖冯绍峰琴瑟和鸣'),
//               ),
//               ListTile(
//                 title: Text('怒晴湘西'),
//                 subtitle: Text('改编自鬼吹灯 潘粤明闯瓶山'),
//               ),
//               ListTile(
//                 title: Text('小女花不弃'),
//                 subtitle: Text('林依晨张彬彬甜宠蜜恋暖爱来袭'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


/**
 * 11.Stack Widget
 */
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var stack = new Stack(
//       alignment: const FractionalOffset(0.1, 0.5),
//       children: <Widget>[
//         CircleAvatar(
//           backgroundImage: NetworkImage('https://avatars2.githubusercontent.com/u/20652750?s=460&v=4'),
//           radius: 100.0,
//         ),
//         Container(
//           decoration: BoxDecoration(
//             color: Colors.transparent
//           ),
//           padding: EdgeInsets.all(5.0),
//           child: Text(
//             'girl',
//             style: TextStyle(
//               color: Colors.black54
//             ),
//           ),
//         )
//       ],
//     );
//     return MaterialApp(
//       title: 'Flutter Stack Widget',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Welcome to Flutter'),
//         ),
//         body: Center(
//           child: stack,
//         ),
//       ),
//     );
//   }
// }


/**
 * 12.Positioned Widget
 */
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var stack = new Stack(
//       children: <Widget>[
//         CircleAvatar(
//           backgroundImage: NetworkImage('https://avatars2.githubusercontent.com/u/20652750?s=460&v=4'),
//           radius: 100.0,
//         ),
//         Positioned(
//           top: 80.0,
//           left: 10.0,
//           child: Text(
//             'sex',
//             style: TextStyle(
//               color: Colors.black54
//             ),
//           ),
//         ),
//         Positioned(
//           bottom: 80.0,
//           left: 10.0,
//           child: Text(
//             'girl',
//             style: TextStyle(
//               color: Colors.black54
//             ),
//           ),
//         ),
//       ],
//     );
//     return MaterialApp(
//       title: 'Flutter Positioned Demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Welcome to Flutter'),
//         ),
//         body: Center(
//           child: stack,
//         ),
//       ),
//     );
//   }
// }


/**
 * 13.Card Widget
 */
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Card Demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Welcome to Flutter'),
//         ),
//         body: Card(
//           margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 450.0),
//           child: Column(
//             children: <Widget>[
//               ListTile(
//                 leading: Icon(Icons.phone_iphone),
//                 title: Text('知否知否应是绿肥红瘦'),
//                 subtitle: Text('赵丽颖冯绍峰琴瑟和鸣'),
//               ),
//               ListTile(
//                 leading: Icon(Icons.personal_video),
//                 title: Text('怒晴湘西'),
//                 subtitle: Text('改编自鬼吹灯 潘粤明闯瓶山'),
//               ),
//               ListTile(
//                 leading: Icon(Icons.person_outline),
//                 title: Text('小女花不弃'),
//                 subtitle: Text('林依晨张彬彬甜宠蜜恋暖爱来袭'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


/**
 * 14.Navigator
 */
// import 'package:flutter/material.dart';

// void main() => runApp(
//   MaterialApp(
//     title: 'Flutter Navigator Demo',
//     home: FirstScreen(),
//   )
// );

// class FirstScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('导航Demo'),
//       ),
//       body: Center(
//         child: RaisedButton(
//           onPressed: () {
//             Navigator.push(context, MaterialPageRoute(builder: (context) => SeondScreen()));
//           },
//           child: Text('查看课程详情'),
//         ),
//       ),
//     );
//   }
// }

// class SeondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('课程详情'),
//       ),
//       body: Center(
//         child: RaisedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text('返回课程'),
//         ),
//       ),
//     );
//   }
// }


/**
 * 15.Navigator Parmas
 */
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Navigator Params Demo',
//       home: ProductList(
//         products: List.generate(20, (i) => Product('商品 $i', '这是一个商品详情, 商品编号为: $i'))
//       ),
//     );
//   }
// }

// class Product {
//   final String title;
//   final String desc;
//   Product(this.title, this.desc);
// }

// class ProductList extends StatelessWidget {
//   final List<Product> products;

//   ProductList({
//     Key key,
//     @required this.products
//   }):super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('商品列表'),
//       ),
//       body: ListView.builder(
//         itemCount: products.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(products[index].title),
//             onTap: (){
//               Navigator.push(context, MaterialPageRoute(
//                 builder: (context) => ProductDetail(
//                   product: products[index]
//                 )
//               ));
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// class ProductDetail extends StatelessWidget {
//   final Product product;

//   ProductDetail({
//     Key key,
//     @required this.product
//   }):super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('${product.title}'),
//       ),
//       body: Center(
//         child: Text('${product.desc}'),
//       ),
//     );
//   }
// }


/**
 * 16.Navigator callback
 */
// import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(
//   title: '导航器回调示例',
//   home: FirstPage(),
// ));

// class FirstPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('FirstPage'),
//       ),
//       body: Center(
//         child: RouteBotton(),
//       ),
//     );
//   }
// }

// class RouteBotton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: RaisedButton(
//         onPressed: (){
//           _navigatorToProductList(context);
//         },
//         child: Text('去购买商品'),
//       ),
//     );
//   }

//   _navigatorToProductList(BuildContext context) async {
//     final result = await Navigator.push(context, MaterialPageRoute(builder: (context) => ProductList()));
//     Scaffold.of(context).showSnackBar(SnackBar(
//       content: Text('$result'),
//     ));
//   }
// }

// class ProductList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ProductListPage'),
//       ),
//       body: Center(
//         child: Column(
//           children: <Widget>[
//             RaisedButton(
//               child: Text('英语流利说'),
//               onPressed: (){
//                 Navigator.pop(context, '您购买的课程是：英语流利说');
//               },
//             ),
//             RaisedButton(
//               child: Text('喜马拉拉电台'),
//               onPressed: (){
//                 Navigator.pop(context, '您购买的课程是：喜马拉拉电台');
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


/**
 * 17.Static Images
 */
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Static Images Demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Welcome to Flutter'),
//         ),
//         body: Container(
//           margin: EdgeInsets.all(20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               Image.asset(
//                 'images/015939.png',
//                 width: 100.0,
//               ),
//               Image.asset(
//                 'images/5020010.png',
//                 width: 100.0,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


/**
 * 18.规则的底部导航栏
 */
import 'package:flutter/material.dart';
import 'demo01/bottom_navigator_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FLutter BottomNavigatorBar Demo',
      theme: ThemeData.light(),
      home: MyBottomNavigationBar(),
    );
  }
}