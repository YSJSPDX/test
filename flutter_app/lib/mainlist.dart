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
    return ListView(
      scrollDirection: Axis.vertical,  //垂直列表，默认
      //scrollDirection: Axis.horizontal,  //水平列表
      padding: EdgeInsets.all(10),
      children:<Widget> [
        Image.network("https://c-ssl.duitang.com/uploads/item/202008/21/20200821234736_UXRwM.thumb.1000_0.jpeg"),
        Container(
          child: Text(
            '我是一个标题',
            textAlign:TextAlign.center,
            style: TextStyle(
              fontSize:28 
              ),
          ),
          height: 40,
        ),
        Image.network("https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201912%2F03%2F20191203182404_nxlxp.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1614495390&t=ce761ec6703db60d837b06966b95aa02"),
        Image.network("https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1703095301,628679978&fm=26&gp=0.jpg"),
        Image.network("https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=205537929,753118866&fm=15&gp=0.jpg"),
         ListTile(
           leading: Image.network("https://c-ssl.duitang.com/uploads/item/202008/21/20200821234736_UXRwM.thumb.1000_0.jpeg"),
          title: Text('周恩来',
          style: TextStyle(
            fontSize: 24
          ),
          ),
          subtitle: Text("与肝胆人共事，无字句处读书。"),
        ),
         ListTile(
           leading: Icon(Icons.pages,color: Colors.purple,size: 30),
          title: Text('邓拓'),
          subtitle: Text("越是没有本领的就越加自命不凡。"),
        ),
         ListTile(
           leading: Icon(Icons.home,color: Colors.purple,size: 30),
          title: Text('老子'),
          subtitle: Text("知人者智，自知者明。胜人者有力，自胜者强。"),
          //trailing: Icon(Icons.home,color: Colors.pink,size: 30)
        ),
         ListTile(
           leading: Icon(Icons.margin,color: Colors.purple,size: 30),
          title: Text('韩愈'),
          subtitle: Text("业精于勤，荒于嬉；行成于思，毁于随。"),
          //trailing: Icon(Icons.school,color: Colors.black,size: 30)
        )

      ],
    );
  }
}