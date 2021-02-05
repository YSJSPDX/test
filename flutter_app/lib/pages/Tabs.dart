import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Message.dart';
import 'tabs/People.dart';
import 'tabs/Collections.dart';

class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key, this.index = 0}) : super(key: key);

  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex;
  _TabsState(index) {
    this._currentIndex = index;
  }

  List _pageList = [
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
        currentIndex: this._currentIndex,
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        iconSize: 36.0,
        fixedColor: Colors.red,
        type: BottomNavigationBarType.fixed, //配置底部tabs可以有多个按钮
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
      drawer: Drawer(
          child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: UserAccountsDrawerHeader(
                    accountName: Text("艺术就是派大星"),
                    accountEmail: Text("YSJSPDX@123.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage("https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201912%2F03%2F20191203182404_nxlxp.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1614495390&t=ce761ec6703db60d837b06966b95aa02"),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black,
                     image: DecorationImage(
                        image: NetworkImage("https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1703095301,628679978&fm=26&gp=0.jpg"),
                        fit: BoxFit.cover
                     )
                    ),
                    otherAccountsPictures:<Widget> [
                      Image.network("https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=205537929,753118866&fm=15&gp=0.jpg")
                    ],
                  )
                  )
            ],
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.home)
              ),
            title: Text('我的空间'),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.people)
              ),
            title: Text('用户中心'),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/user');
            },
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.settings)),
            title: Text('设置中心'),
          ),
        ],
      )
      ),
      endDrawer: Drawer(child: Text('右侧侧边栏')),
    );
  }
}
