import 'package:flutter/material.dart';

class PeoplePage extends StatefulWidget {
  PeoplePage({Key key}) : super(key: key);

  @override
  _PeoplePageState createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget>[
        RaisedButton(
          child:Text('跳转到登陆界面'),
          onPressed:(){
            Navigator.pushNamed(context, '/login');
            
          },
          color:Theme.of(context).accentColor,
          textTheme:ButtonTextTheme.primary
        ),
        SizedBox(height:20),
        RaisedButton(
          child:Text('跳转到注册界面'),
          onPressed:(){
            Navigator.pushNamed(context, '/registerfirst');
            
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