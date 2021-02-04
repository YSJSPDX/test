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

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Container(
//       height: 600.0,
//       width: 400.0,
//       color: Colors.pink,
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.end,
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children:<Widget>[
//         IconContainter(Icons.search,color: Colors.black,),
//         IconContainter(Icons.home,color: Colors.blue,),
//         IconContainter(Icons.school,color: Colors.red,),
//       ]
//     )
//     // child: Column(
//     //     crossAxisAlignment: CrossAxisAlignment.end,
//     //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     //   children:<Widget>[
//     //     IconContainter(Icons.search,color: Colors.black,),
//     //     IconContainter(Icons.home,color: Colors.blue,),
//     //     IconContainter(Icons.school,color: Colors.red,),
//     //   ]
//     // )
//     );
//   }
// }

// class IconContainter extends StatelessWidget{
//   double size=32.0;
//   Color color=Colors.red;
//   IconData icon;
//   IconContainter(this.icon,{this.size,this.color});
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Container(
//       height: 50.0,
//       width: 50.0,
//       color: this.color,
//       child: Center(
//         child: Icon(this.icon,
//         size:this.size,
//         color: Colors.white,
//         ),
//       ),
//     );
//   }
// }

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Row(children: <Widget>[
//       Expanded(
//         flex: 1,
//         child: IconContainter(
//           Icons.search,
//           color: Colors.black,
//         ),
//       ),
//       Expanded(
//         flex: 1,
//         child: IconContainter(
//           Icons.home,
//           color: Colors.blue,
//         ),
//       ),
//       Expanded(
//         flex: 3,
//         child: IconContainter(
//           Icons.school,
//           color: Colors.red,
//         ),
//       ),
//     ]);
//   }
// }

// class IconContainter extends StatelessWidget {
//   double size = 32.0;
//   Color color = Colors.red;
//   IconData icon;
//   IconContainter(this.icon, {this.size, this.color});
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Container(
//       height: 50.0,
//       width: 50.0,
//       color: this.color,
//       child: Center(
//         child: Icon(
//           this.icon,
//           size: this.size,
//           color: Colors.white,
//         ),
//       ),
//     );
//   }
// }

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Row(
          children:<Widget>[
            Expanded(
              child: Container(
          height: 180.0,
          color: Colors.black,
          child: Text('你好flutter'),
        ),
            )
          ]
        ),
        SizedBox(height:10),
        Row(children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              height: 180.0,
              child: Image.network(
                "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201912%2F03%2F20191203182404_nxlxp.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1614495390&t=ce761ec6703db60d837b06966b95aa02",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width:10),
          Expanded(
            flex: 1,
            child: Container(
              height: 180.0,
              child: ListView(
                children: <Widget>[
                  Container(
                    height: 85.0,
                    child: Image.network(
                      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201912%2F03%2F20191203182404_nxlxp.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1614495390&t=ce761ec6703db60d837b06966b95aa02",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height:10),
                  Container(
                    height: 85.0,
                    child: Image.network(
                      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201912%2F03%2F20191203182404_nxlxp.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1614495390&t=ce761ec6703db60d837b06966b95aa02",
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            ),
          )
        ])
      ],
    );
  }
}
