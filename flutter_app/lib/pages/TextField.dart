import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  TextFieldDemo({Key key}) : super(key: key);

  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  var _username=new TextEditingController();  //初始化的时候给表单赋值
  var _password;
  @override
  void initState() { 
    super.initState();
    _username.text='初始值';
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单演示界面'),
      ),
      body: ListView(
        children:<Widget> [
          Container(
            child: Padding(
        padding: EdgeInsets.all(20),
        child: TextDemo(),
        // child: Column(
        //   children:<Widget> [
        //     TextField(
        //       decoration: InputDecoration(
        //         hintText: "请输入用户名"
        //       ),
        //       controller: _username,
        //       onChanged: (value){
        //         setState(() {
        //           _username.text=value;
        //         });
        //       },
        //     ),
        //     SizedBox(height:20),
        //     TextField(
        //       obscureText: true,
        //       decoration: InputDecoration(
        //         hintText: "密码"
        //       ),
        //       onChanged: (value){
        //         setState(() {
        //           _password=value;
        //         });
        //       },
        //     ),
        //     SizedBox(height:20),
        //     Container(
        //       width: double.infinity,
        //       height: 40,
        //       child: RaisedButton(
        //         child: Text("登录"),
        //         onPressed: (){
        //           print(this._username.text);
        //           print(_password);
        //         },
        //         color: Colors.blue,
        //         textColor: Colors.white,
        //       ),
        //     )
        //   ],
        // ),
      ),
          )
        ],
      )
    );
  }
}

class TextDemo extends StatelessWidget {
  const TextDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          children:<Widget> [
            TextField(),
            SizedBox(height:20),
            TextField(
              maxLength: 25,
              decoration:InputDecoration(
                hintText:"限定字数文本框",
                border: OutlineInputBorder()
              )
            ),
            SizedBox(height:20),
            TextField(
              maxLines: 4,
              decoration:InputDecoration(
                hintText:"多行文本",
                border: OutlineInputBorder()
              )
            ),
            SizedBox(height:20),
            TextField(
              obscureText: true,
              decoration:InputDecoration(
                hintText:"密码框",
                border: OutlineInputBorder()
              )
            ),
            SizedBox(height:20),
            TextField(
              decoration:InputDecoration(
                labelText: "用户名",
                border: OutlineInputBorder()
              )
            ),
            SizedBox(height:10),
            TextField(
              obscureText: true,
              decoration:InputDecoration(
                labelText: "密码",
                border: OutlineInputBorder()
              )
            ),
            SizedBox(height:10),
            TextField(
              decoration:InputDecoration(
                icon: Icon(Icons.people),
                hintText: "请输入用户名"
              )
            ),
          ],
        ),
    );
  }
}