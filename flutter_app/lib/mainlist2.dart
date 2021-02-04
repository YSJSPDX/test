import 'package:flutter/material.dart'; 

void main() {
  runApp(MyApp());
}
//自定义组件
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text('智租'),

        ),
        body: HomeContent()
        ),
      theme: ThemeData(
        primarySwatch: Colors.yellow
        )
    );
  }
}

//
class HomeContent extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 280,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            height: 280,
            width: 180,
            color: Colors.red,
            child: Image.network("https://c-ssl.duitang.com/uploads/item/202008/21/20200821234736_UXRwM.thumb.1000_0.jpeg",
            fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 280,
            width: 180,
            color: Colors.yellow,
            child: ListView(
              children:<Widget> [
                Image.network("https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201912%2F03%2F20191203182404_nxlxp.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1614495390&t=ce761ec6703db60d837b06966b95aa02"),
                Text('真好看')
              ],
            ),
          ),
          Container(
            height: 280,
            width: 180,
            color: Colors.blue,
          ),
          Container(
            height: 280,
            width: 180,
            color: Colors.green,
          )
        ],
      ),
    );
  }
}