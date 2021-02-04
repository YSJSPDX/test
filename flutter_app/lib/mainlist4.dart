import 'package:flutter/material.dart';
import 'res/listData.dart';

void main() {
  runApp(MyApp());
}

//自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('智租'),
            ),
            body: HomeContent()),
        theme: ThemeData(primarySwatch: Colors.yellow));
  }
}

//
class HomeContent extends StatelessWidget {
  // List list=new List();
  // HomeContent(){
  //   for (var i = 0; i < 20; i++) {
  //     this.list.add(ListTile(
  //       title: Text("我是第$i个列表"),
  //     ));
  //   }
  // }
  //自定义方法
  Widget _getListData(context, index) {
    return ListTile(
        title: Text(listData[index]["title"]),
        leading: Image.network(listData[index]["imageUr1"]),
        subtitle: Text(listData[index]["author"]));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: listData.length, itemBuilder: this._getListData);
  }
}
