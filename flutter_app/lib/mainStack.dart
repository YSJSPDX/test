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

//单个的定位
// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Center(
//       child: Stack(
//         // alignment: Alignment.center,
//         alignment: Alignment(0,0.4),
//         children: <Widget>[
//         Container(
//           height: 400.0,
//           width: 300.0,
//           color: Colors.red,
//         ),
//         Text('我是一个文本',
//         style: TextStyle(
//           fontSize:20,
//           color: Colors.white
//           ),
//         )
//       ]),
//     );
//   }
// }

//多个组件的定位
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
          height: 40.0,
          width: 400.0,
          color: Colors.red,
        child: Stack(
          children:<Widget>[
            // Align(
            //   alignment:Alignment(-1,1),
            //   child:Icon(Icons.home,size:30,color:Colors.white),
            // ),
            // Align(
            //   alignment:Alignment.bottomCenter,
            //   child:Icon(Icons.search,size:30,color:Colors.black),
            // ),
            // Align(
            //   alignment:Alignment.bottomRight,
            //   child:Icon(Icons.send,size:30,color:Colors.orange),
            // ),
            Positioned(
              left: 10,
              bottom: 0,
              child:Icon(Icons.home,size:30,color:Colors.white),
            ),
            Positioned(
              bottom: 0,
              left: 170,
              child:Icon(Icons.search,size:30,color:Colors.black),
            ),
            Positioned(
              bottom: 0,
              right: 10,
              child:Icon(Icons.send,size:30,color:Colors.orange),
            ),
          ]
        ),
        ),
    );
  }
}
