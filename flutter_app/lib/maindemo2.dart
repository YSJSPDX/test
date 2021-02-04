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
        child: Text('高出不胜寒，起舞弄清影，何似在人间',
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,  //文本超出后省略
          // overflow: TextOverflow.fade,  //文本超出后隐藏
          maxLines: 2,   //设置最大行数
          textScaleFactor: 2,
          style: TextStyle(
            fontSize: 16.0,
            color:Colors.red,
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.white,
            decorationStyle: TextDecorationStyle.dashed,
            letterSpacing: 5.0

          )
        ),
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(
            color: Colors.blue,
            width: 2.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20)
          )
        ),
        // padding: EdgeInsets.all(10),
        padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
        // transform: Matrix4.translationValues(100, 0, 0),  //位移
        // transform: Matrix4.rotationZ(0.3),  //旋转
        // transform: Matrix4.skew(alpha, beta)  //倾斜
        // transform: Matrix4.diagonal3Values(1.2, 1, 1)  //缩放
        alignment: Alignment.bottomLeft,
      ),
    );
  }

}