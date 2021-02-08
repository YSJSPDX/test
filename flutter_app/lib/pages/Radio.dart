import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  RadioDemo({Key key}) : super(key: key);

  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int sex = 1;
  bool flag=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio'),
      ),
      body: Column(
        children: <Widget>[
          // Row(children: <Widget>[
          //   Text("男"),
          //   Radio(
          //       value: 1,
          //       groupValue: this.sex,
          //       onChanged: (v) {
          //         setState(() {
          //           this.sex = v;
          //         });
          //       }),
          //       SizedBox(width:20),
          //       Text("女"),
          //   Radio(
          //       value: 2,
          //       groupValue: this.sex,
          //       onChanged: (v) {
          //         setState(() {
          //           this.sex = v;
          //         });
          //       })
          // ]
          // ),
          // Row(
          //   children:<Widget>[
          //     Text("${this.sex}"),
          //     Text(this.sex==1?"男":"女")
          //   ]
          // ),
          SizedBox(height: 40),
          RadioListTile(
              value: 1,
              groupValue: this.sex,
              title: Text("标题"),
              subtitle: Text("这是一个二级标题"),
              secondary: Icon(Icons.help),
              selected: this.sex==1,
              onChanged: (v) {
                setState(() {
                  this.sex = v;
                });
              }),
              RadioListTile(
              value: 2,
              groupValue: this.sex,
              title: Text("标题"),
              subtitle: Text("这是一个二级标题"),
              secondary: Icon(Icons.help),
               selected: this.sex==2,
              onChanged: (v) {
                setState(() {
                  this.sex = v;
                });
              }),
              SizedBox(height:40),
              Switch(
                value: this.flag,
                onChanged: (v){
                  setState(() {
                    this.flag=v;
                    print(v);
                  });
                },
              )
        ],
      ),
    );
  }
}
