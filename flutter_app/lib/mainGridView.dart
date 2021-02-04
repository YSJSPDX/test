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
//静态
//
// class HomeContent extends StatelessWidget {

//   List<Widget> _getListData(){
//     List<Widget> list=new List();

//     for (var i = 0; i < 20; i++) {
//       list.add(Container(
//         alignment: Alignment.center,
//         child: Text(
//           '这是第$i条数据',
//           style: TextStyle(color: Colors.white,fontSize: 20),
//         ),
//         color: Colors.blue,
//       ));
//     }
//     return list;
//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return GridView.count(
//       crossAxisCount: 2,        // 每行widget的数量
//       crossAxisSpacing: 20.0,    //水平子widget的距离
//       mainAxisSpacing: 20.0,     //垂直子widget的距离
//       childAspectRatio: 0.7,     //狂赌和高度的比例
//       padding: EdgeInsets.all(10),
//       children: this._getListData(),
//       // children:<Widget>[
//       //   Text("这是一个文本"),
//       //   Text("这是一个文本"),
//       //   Text("这是一个文本"),
//       //   Text("这是一个文本"),
//       //   Text("这是一个文本"),
//       //   Text("这是一个文本"),
//       //   Text("这是一个文本"),
//       //   Text("这是一个文本"),
//       // ]
//     );
//   }
// }

//静态写动态
// class HomeContent extends StatelessWidget {
//   List<Widget> _getListData() {
//     var tempList = listData.map((value) {
//       return Container(
//         child: Column(
//           children: <Widget>[
//             Image.network(value['imageUr1'],
//             height: 120,
//             width: 160,
//             fit: BoxFit.cover,
//             ),
//             SizedBox(height:10),
//             Text(value['title'],
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontSize:20
//               ),
//             ),
//           ],
//         ),
//         decoration: BoxDecoration(
//           border: Border.all(
//             color: Color.fromRGBO(233, 233, 233, 0.9),
//             width: 1
//           )
//         ),
//       );
//     });
//     return tempList.toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return GridView.count(
//       crossAxisCount: 2, // 每行widget的数量
//       crossAxisSpacing: 20.0, //水平子widget的距离
//       mainAxisSpacing: 20.0, //垂直子widget的距离
//       // childAspectRatio: 0.7, //宽度和高度的比例
//       padding: EdgeInsets.all(10),
//       children: this._getListData(),
//     );
//   }
// }

//动态
class HomeContent extends StatelessWidget {
  Widget _getListData(context, index) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.network(
            listData[index]['imageUr1'],
            height: 120,
            width: 160,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Text(
            listData[index]['title'],
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
      decoration: BoxDecoration(
          border:
              Border.all(color: Color.fromRGBO(233, 233, 233, 0.9), width: 1)),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      // crossAxisCount: 2, // 每行widget的数量
      // crossAxisSpacing: 20.0, //水平子widget的距离
      // mainAxisSpacing: 20.0, //垂直子widget的距离
      // // childAspectRatio: 0.7, //宽度和高度的比例
      // padding: EdgeInsets.all(10),
      // children: this._getListData(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 每行widget的数量
        crossAxisSpacing: 20.0, //水平子widget的距离
        mainAxisSpacing: 20.0, //垂直子widget的距离
      ),
      itemCount: listData.length,
      itemBuilder: this._getListData,
    );
  }
}
