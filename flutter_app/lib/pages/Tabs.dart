import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Message.dart';
import 'tabs/People.dart';
import 'tabs/Collections.dart';

class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key,this.index=0}) : super(key: key);

  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex;
  _TabsState(index){
    this._currentIndex=index;
  }

  List _pageList=[
    HomePage(),
    MessagePage(),
    Collections(),
    PeoplePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              title: Text('智租'),
            ),
            body: this._pageList[this._currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex:this._currentIndex,
              onTap: (int index){
                setState(() {
                  this._currentIndex=index;
                });
              },
              iconSize: 36.0,
              fixedColor: Colors.red,
              type: BottomNavigationBarType.fixed,  //配置底部tabs可以有多个按钮
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text('首页')
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.message),
                  title: Text('消息')
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.collections),
                  title: Text('心愿单')
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.people),
                  title: Text('我的')
                ),
              ],
            ),
            );
        
  }
}