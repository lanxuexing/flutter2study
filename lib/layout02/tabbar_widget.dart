import 'package:flutter/material.dart';

class TabbarWidget extends StatefulWidget {
  final Widget child;

  TabbarWidget({Key key, this.child}) : super(key: key);

  _TabbarWidgetState createState() => _TabbarWidgetState();
}

class _TabbarWidgetState extends State<TabbarWidget> with SingleTickerProviderStateMixin {
  // 定义一个globalKey, 由于GlobalKey要保持全局唯一性，我们使用静态变量存储
  GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  int _currentIndex = 1;
  List _tabs = ['新闻', '历史', '图片'];
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =TabController(vsync: this, length: _tabs.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey , // 设置key
      appBar: AppBar( // 导航栏
        leading: Builder(builder: (context) { // 自定义抽屉图标
          return IconButton(
            icon: Icon(Icons.dashboard),
            color: Colors.white,
            onPressed: (){
              Scaffold.of(context).openDrawer(); // 获取父级最近的Scaffold Widget的State对象, 打开抽屉菜单 【第一种写法】
              // _globalKey.currentState.openDrawer(); // 通过GlobalKey来获取StatefulWidget对象State, 打开抽屉菜单 【第二种写法】
            },
          );
        }),
        title: Text('Demo'),
        actions: <Widget>[ // 导航栏右侧菜单
          IconButton(
            icon: Icon(Icons.share),
            onPressed: (){
              print('即将要分享应用');
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: _tabs.map((item) => Tab(text: item,)).toList(),
        ),
      ),
      drawer: MyDrawer(), // 抽屉
      // bottomNavigationBar: BottomNavigationBar( // 底部导航, 【第一种：规则的】
      //   currentIndex: _currentIndex,
      //   fixedColor: Colors.lightBlue,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       title: Text('Home')
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.business),
      //       title: Text('Business')
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.school),
      //       title: Text('School')
      //     ),
      //   ],
      //   onTap: _onBottomNavigationBarTap,
      // ),
      bottomNavigationBar: BottomAppBar(  // 底部导航, 【第一种：不规则的】
      color: Colors.lightBlue,
        shape: CircularNotchedRectangle(), // 底部导航栏打一个圆形的洞
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround, // 均分底部导航栏横向空间
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: (){},
            ),
            SizedBox(), // 中间位置空出
            IconButton(
              icon: Icon(Icons.school),
              onPressed: (){},
            ),
          ],
        ),
      ),
      // floatingActionButton: Stack( // 自定义floatingActionButton位置
      //   children: <Widget>[
      //     Positioned(
      //       width: 80.0,
      //       bottom: 250.0,
      //       left: MediaQuery.of(context).size.width / 2 - 40.0,
      //       child: FloatingActionButton( // 浮动按钮
      //       child: Icon(Icons.add),
      //       onPressed: (){},
      //     ),
      //   )],
      // ),
      floatingActionButton: Icon(Icons.add),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: TabBarView( // Tab组
        controller: _tabController,
        children: _tabs.map((item) {
          return Container(
            alignment: Alignment.center,
            child: Text(
              item,
              style: TextStyle(
                color: Colors.lightBlue
              ),
              textScaleFactor: 3
            ),
          );
        }).toList(),
      ),
    );
  }

  _onBottomNavigationBarTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

}


// 抽屉
class MyDrawer extends StatelessWidget {

  MyDrawer({Key key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // 设置左对齐
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 38.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: ClipOval(
                      child: SizedBox(
                        width: 80.0,
                        height: 80.0,
                        child: Image.network(
                          'https://avatars2.githubusercontent.com/u/20652750?s=460&v=4',
                          fit: BoxFit.fill,
                        ),
                      )
                    ),
                  ),
                  Text(
                    'Jenson',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('毒液：致命保护者'),
                    subtitle: Text('漫威电影公司'),
                  ),
                  ListTile(
                    title: Text('钢铁侠'),
                    subtitle: Text('漫威电影公司'),
                  ),
                  ListTile(
                    title: Text('复仇者联盟：无限战争'),
                    subtitle: Text('漫威电影公司'),
                  ),
                  ListTile(
                    title: Text('雷神：诸神黄昏'),
                    subtitle: Text('漫威电影公司'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}