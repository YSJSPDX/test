import 'package:flutter/material.dart';
import '../Search.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  ListView(
      children:<Widget> [
        Container(
          child: Center(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child:Text('跳转到搜索页面'),
          onPressed:(){
            //路由跳转
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context)=>SearchPage()
            //   )
            // );
            Navigator.pushNamed(context, '/search',arguments:{
              "id":123
            });
          },
          color:Theme.of(context).accentColor,
          textTheme:ButtonTextTheme.primary
        ),
        SizedBox(height:10),
        RaisedButton(
          child:Text('跳转到商品页面'),
          onPressed:(){
            Navigator.pushNamed(context, '/product');
          },
          color:Theme.of(context).accentColor,
          textTheme:ButtonTextTheme.primary
        ),
        SizedBox(height:10),
        RaisedButton(
          child:Text('跳转到appBar'),
          onPressed:(){
            Navigator.pushNamed(context, '/appbardemo');
          },
          color:Theme.of(context).accentColor,
          textTheme:ButtonTextTheme.primary
        ),
        SizedBox(height:10),
         RaisedButton(
          child:Text('TabBarController定义顶部tab切换'),
          onPressed:(){
            Navigator.pushNamed(context, '/tabbarcontroller');
          },
          color:Theme.of(context).accentColor,
          textTheme:ButtonTextTheme.primary
        ),
        SizedBox(height:10),
         RaisedButton(
          child:Text('跳转到按钮演示界面'),
          onPressed:(){
            Navigator.pushNamed(context, '/button');
          },
          color:Theme.of(context).accentColor,
          textTheme:ButtonTextTheme.primary
        ),
        SizedBox(height:10),
         RaisedButton(
          child:Text('跳转到表单演示界面'),
          onPressed:(){
            Navigator.pushNamed(context, '/textfield');
          },
          color:Theme.of(context).accentColor,
          textTheme:ButtonTextTheme.primary
        ),
        SizedBox(height:10),
         RaisedButton(
          child:Text('raido'),
          onPressed:(){
            Navigator.pushNamed(context, '/radio');
          },
          color:Theme.of(context).accentColor,
          textTheme:ButtonTextTheme.primary
        ),
        SizedBox(height:10),
         RaisedButton(
          child:Text('checkbox'),
          onPressed:(){
            Navigator.pushNamed(context, '/checkbox');
          },
          color:Theme.of(context).accentColor,
          textTheme:ButtonTextTheme.primary
        ),
        SizedBox(height:10),
         RaisedButton(
          child:Text('学员登记系统'),
          onPressed:(){
            Navigator.pushNamed(context, '/formdemo');
          },
          color:Theme.of(context).accentColor,
          textTheme:ButtonTextTheme.primary
        ),
         SizedBox(height:100),
      ],
      ),
    ),
        )
      ],
    );
  }
}