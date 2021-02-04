import 'package:flutter/material.dart';

class Collections extends StatefulWidget {
  Collections({Key key}) : super(key: key);

  @override
  _CollectionsState createState() => _CollectionsState();
}

class _CollectionsState extends State<Collections> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Expanded(
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.red,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
              tabs: <Widget>[
                Tab(text: "热门"),
                Tab(text: "推荐"),
                Tab(text: "关注"),
                Tab(text: "附近"),
                Tab(text: "收藏"),
                Tab(text: "必看"),
              ],
            ))
          ]),
        ),
        body: TabBarView(children: <Widget>[
          ListView(children: <Widget>[
            ListTile(title: Text("第一个tab")),
            ListTile(title: Text("第一个tab")),
            ListTile(title: Text("第一个tab")),
          ]),
          ListView(children: <Widget>[
            ListTile(title: Text("第二个tab")),
            ListTile(title: Text("第一二个tab")),
            ListTile(title: Text("第二个tab")),
          ]),
          ListView(children: <Widget>[
            ListTile(title: Text("第三个tab")),
            ListTile(title: Text("第三个tab")),
            ListTile(title: Text("第三个tab")),
          ]),
          ListView(children: <Widget>[
            ListTile(title: Text("第四个tab")),
            ListTile(title: Text("第四个tab")),
            ListTile(title: Text("第四个tab")),
          ]),
          ListView(children: <Widget>[
            ListTile(title: Text("第五个tab")),
            ListTile(title: Text("第五个tab")),
            ListTile(title: Text("第五个tab")),
          ]),
          ListView(children: <Widget>[
            ListTile(title: Text("第六个tab")),
            ListTile(title: Text("第六个tab")),
            ListTile(title: Text("第六个tab")),
          ])
        ]),
      ),
    );
  }
}
