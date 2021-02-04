import 'package:flutter/material.dart';
import '../Form.dart';

class MessagePage extends StatefulWidget {
  MessagePage({Key key}) : super(key: key);

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget> [
        RaisedButton(
          child:Text('跳转到页面并传值'),
          onPressed:(){
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder:(context)=>FormPage(title: '我是跳转传值',)
            //     )
            // );
            Navigator.pushNamed(context, '/form');
          },
          color:Theme.of(context).accentColor,
          textTheme:ButtonTextTheme.primary
        ),
        SizedBox(height:20),
      ],
    ),
    );
  }
}