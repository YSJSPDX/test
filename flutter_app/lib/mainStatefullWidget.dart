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
            body: HomePage()),
        theme: ThemeData(primarySwatch: Colors.blue));
  }
}
//自定义无状态组件
// class HomePage extends StatelessWidget {
//   const HomePage({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         SizedBox(
//           height:200,
//         ),
//         Text('你好'),
//         SizedBox(
//           height:20,
//         ),
//         RaisedButton(
//           child: Text('按钮'),
//           onPressed:() {
//           },
//         )
//       ],
//     );
//   }
// }

//自定义有状态组件实现点击增加数字
// class HomePage extends StatefulWidget {
//   HomePage({Key key}) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int countNum=0;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         SizedBox(
//           height:200,
//         ),
//         Chip(
//           label:Text('${this.countNum}')
//         ),
//         SizedBox(
//           height:20,
//         ),
//         RaisedButton(
//           child: Text('按钮'),
//           onPressed:() {
//             setState(() {
//               this.countNum++;
//             });
//           },
//         )
//       ],
//     );
//   }
// }


class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List list=new List();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children:<Widget>[
        Column(
          children: this.list.map((value){
            return ListTile(
              title: Text(value) ,
            );
          }).toList(),
        ),
        SizedBox(
          height:20
        ),
        RaisedButton(
          child: Text('按钮'),
          onPressed:() {
            setState(() {
              this.list.add('新增数据1');
              this.list.add('新增数据2');
            });
          },
        )
      ]
    );
  }
}