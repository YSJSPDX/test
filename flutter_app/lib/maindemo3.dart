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
          title: Text('Flutter Demo')
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
    return Center(
      child: Container(
        // child: Image.asset("images/a.jpg",
        // fit: BoxFit.cover,
        // ),
        // height: 300,
        // width: 300,


        child: ClipOval(
          child: Image.network("https://c-ssl.duitang.com/uploads/item/202008/21/20200821234736_UXRwM.thumb.1000_0.jpeg",
          height: 300,
          width: 300,
          fit: BoxFit.cover,
          )
        ),


        // child: Image.network(
        //   "https://c-ssl.duitang.com/uploads/item/202008/21/20200821234736_UXRwM.thumb.1000_0.jpeg",
        //   // alignment: Alignment.topLeft,
        //   // color: Colors.yellow,   //将图片颜色与背景颜色进行混合
        //   // colorBlendMode: BlendMode.screen,
        //   // fit: BoxFit.cover,  //设置图片为充满容器
        //   // repeat: ImageRepeat.repeat,  //图片重复填满
        //   ),
        // width: 300,
        // height: 300,
        // decoration: BoxDecoration(
        //   color: Colors.yellow,
        //   // borderRadius: BorderRadius.all(
        //   //   Radius.circular(150)
        //   // )
        //   borderRadius: BorderRadius.circular(150),
        //   image: DecorationImage(
        //     image: NetworkImage("https://c-ssl.duitang.com/uploads/item/202008/21/20200821234736_UXRwM.thumb.1000_0.jpeg"),
        //     fit: BoxFit.cover
        //   )
        // ),
      )
    );
  }

}