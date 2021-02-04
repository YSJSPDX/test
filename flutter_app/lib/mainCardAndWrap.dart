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
        theme: ThemeData(primarySwatch: Colors.blue));
  }
}

//Card组件

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return ListView(
//       children: <Widget>[
//         // Card(
//         //   margin:EdgeInsets.all(10),
//         //   child:Column(
//         //     children: <Widget>[
//         //       ListTile(
//         //         title:Text('张三',
//         //         style: TextStyle(
//         //           fontSize: 28
//         //         ),
//         //         ),
//         //         subtitle: Text("高级工程师"),
//         //       ),
//         //       ListTile(
//         //         title:Text('电话：xxxxxxx'),
//         //       ),
//         //       ListTile(
//         //         title:Text('地址：xxxxxxx'),
//         //       )
//         //     ],
//         //   )
//         // )
//         Card(
//           margin:EdgeInsets.all(10),
//           child:Column(
//             children: <Widget>[
//               AspectRatio(
//                 aspectRatio:16/9,
//                 child:Image.network("https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201912%2F03%2F20191203182404_nxlxp.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1614495390&t=ce761ec6703db60d837b06966b95aa02",
//                 fit: BoxFit.cover
//                 ) 
//               ),
//                 ListTile(
//                 // leading:ClipOval(
//                 //   child:Image.network("https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201912%2F03%2F20191203182404_nxlxp.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1614495390&t=ce761ec6703db60d837b06966b95aa02",
//                 // fit: BoxFit.cover,
//                 // height: 60,
//                 // width: 60,
//                 // ) 
//                 // ),
//                 leading: CircleAvatar(
//                   backgroundImage: NetworkImage("https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201912%2F03%2F20191203182404_nxlxp.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1614495390&t=ce761ec6703db60d837b06966b95aa02"),
//                 ),
//                 title:Text("xxxx"),
//                 subtitle:Text("xxxx")
//               )
//             ],
//           )
//         )
//       ],
//     );
//   }
// }

//用card组件实现动态输入卡片
// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return ListView(
//       children: listData.map((value){
//         return Card(
//           margin:EdgeInsets.all(10),
//           child:Column(
//             children: <Widget>[
//               AspectRatio(
//                 aspectRatio:16/9,
//                 child:Image.network(value["imageUr1"],
//                 fit: BoxFit.cover
//                 ) 
//               ),
//                 ListTile(
//                 // leading:ClipOval(
//                 //   child:Image.network("https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201912%2F03%2F20191203182404_nxlxp.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1614495390&t=ce761ec6703db60d837b06966b95aa02",
//                 // fit: BoxFit.cover,
//                 // height: 60,
//                 // width: 60,
//                 // ) 
//                 // ),
//                 leading: CircleAvatar(
//                   backgroundImage: NetworkImage(value["imageUr1"]),
//                 ),
//                 title:Text(value["title"],
//                 style: TextStyle(
//                   fontSize: 28
//                 ),
//                 ),
//                 subtitle:Text(value["author"],
//                 maxLines: 2,
//                 overflow:TextOverflow.ellipsis
//                 )
//               )
//             ],
//           )
//         );
//       }).toList(),
//     );
//   }
// }

//wrap组件
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 400,
      width: 400,
      color: Colors.blue,
      padding: EdgeInsets.all(10),
      child: Wrap(
      spacing: 10,
      runSpacing: 10,
      // direction: Axis.vertical,  //竖着排
      // alignment: WrapAlignment.spaceEvenly,
      runAlignment: WrapAlignment.center,
      children:<Widget>[
        Mybutton('遮天'),
        Mybutton('怪物安保公司'),
        Mybutton('一世之尊'),
        Mybutton('长夜余火'),
        Mybutton('旧日盗火者'),
        Mybutton('大道朝天'),
        Mybutton('庆余年'),
        Mybutton('雪中悍刀行'),
        Mybutton('将夜'),
        Mybutton('从零开始的异世界生活'),
      ]
    ),
    );
  }
}

class Mybutton extends StatelessWidget{
  final String text;

  const Mybutton(this.text,{Key key, }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      onPressed: (){

      },
    );
  }
}