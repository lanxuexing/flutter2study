import 'package:flutter/material.dart';

class MyExpansionPanelList extends StatefulWidget {
  _MyExpansionPanelListState createState() => _MyExpansionPanelListState();
}

class _MyExpansionPanelListState extends State<MyExpansionPanelList> {
  List<int> mList;
  List<ExpanStateBean> expandStateList;
  
  _MyExpansionPanelListState() {
    mList = new List();
    expandStateList = new List();
    for (int i = 0; i < 10; i++) {
      mList.add(i);
      expandStateList.add(ExpanStateBean(i, false));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text('Expansion Panel Demo'),
         ),
         body: SingleChildScrollView( // 必须装载在可滚动的列表里边
          child: ExpansionPanelList(
            expansionCallback: (index, bol) {
              _setCurrentIndex(index, bol);
            },
            children: mList.map((index) {
              return ExpansionPanel(
                headerBuilder: (context, isExpanded) {
                  return ListTile(
                    title: Text('这里是第 $index 个'),
                  );
                },
                body: ListTile(
                  title: Text('expansion No.$index'),
                ),
                isExpanded: expandStateList[index].isOpen
              );
            }).toList(),
          ),
         ),
       ),
    );
  }

  _setCurrentIndex(int index, bool isExpanded) {
    setState(() {
      expandStateList.forEach((item) {
        if (item.index == index) {
          item.isOpen = !isExpanded;
        }
      });
    });
  }
}

class ExpanStateBean {
  var index;
  var isOpen;
  ExpanStateBean(this.index, this.isOpen);
}