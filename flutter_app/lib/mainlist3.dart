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
  //自定义方法
  List<Widget> _getData() {
    // List<Widget> list = new List();
    // for (var i = 0; i < 20; i++) {
    //   list.add(ListTile(
    //     title: Text("我是第$i个列表"),
    //   ));
    // }
    // return list;
    var tempList=listData.map((value){
      return ListTile(
        leading: Image.network(value["imageUr1"],
        ),
        title:Text(value["title"]),
        subtitle:Text(value["author"])
      );
    }
    );
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: this._getData(),
    );
  }
}
