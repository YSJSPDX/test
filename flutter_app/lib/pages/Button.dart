import 'package:flutter/material.dart';

class ButtonDemoPage extends StatelessWidget {
  const ButtonDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("按钮演示页面"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add, color: Colors.black, size: 24),
          onPressed: () {
            print("floatingActionButton");
          },
          backgroundColor: Colors.yellow,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              RaisedButton(
                  child: Text('普通按钮'),
                  onPressed: () {
                    print("普通按钮");
                  }),
              SizedBox(width: 10),
              RaisedButton(
                  child: Text('颜色按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    print("颜色按钮");
                  }),
              SizedBox(width: 10),
              RaisedButton(
                  child: Text('阴影按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 20,
                  onPressed: () {
                    print("阴影按钮");
                  }),
            ]),
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              RaisedButton.icon(
                icon: Icon(Icons.search),
                label: Text("图标按钮"),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  print("图标按钮");
                },
              )
            ]),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    height: 50,
                    width: 200,
                    child: RaisedButton(
                        child: Text('宽度高度'),
                        color: Colors.blue,
                        textColor: Colors.white,
                        elevation: 20,
                        onPressed: () {
                          print("宽度高度");
                        }))
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                      height: 40,
                      margin: EdgeInsets.all(10),
                      child: RaisedButton(
                          child: Text('自适应按钮'),
                          color: Colors.blue,
                          textColor: Colors.white,
                          elevation: 20,
                          onPressed: () {
                            print("自适应按钮");
                          })),
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                    child: Text('圆角按钮'),
                    color: Colors.blue,
                    textColor: Colors.white,
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      print("圆角按钮");
                    }),
                Container(
                  height: 80,
                  child: RaisedButton(
                      child: Text('圆形按钮'),
                      color: Colors.blue,
                      textColor: Colors.white,
                      elevation: 20,
                      splashColor: Colors.grey,
                      shape: CircleBorder(
                          side: BorderSide(
                        color: Colors.white,
                      )),
                      onPressed: () {
                        print("圆形按钮");
                      }),
                ),
                FlatButton(
                  child: Text("按钮"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    print("FlatButton");
                  },
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                    child: Text("按钮"),
                    // color: Colors.blue,   //没有效果
                    textColor: Colors.red,
                    onPressed: () {
                      print("OutlineButton");
                    })
              ],
            ),
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                      child: Text('登录'),
                      color: Colors.blue,
                      textColor: Colors.white,
                      elevation: 20,
                      onPressed: () {
                        print("登录");
                      }),
                  RaisedButton(
                      child: Text('注册'),
                      color: Colors.blue,
                      textColor: Colors.white,
                      elevation: 20,
                      onPressed: () {
                        print("注册");
                      }),
                  MyButton(
                      text: "自定义按钮",
                      height: 60,
                      width: 120,
                      pressed: () {
                        print("自定义按钮");
                      })
                ],
              )
            ]),
            SizedBox(height: 50),
          ],
        ));
  }
}

//自定义按钮组件

class MyButton extends StatelessWidget {
  final text;
  final pressed;
  final double height;
  final double width;
  const MyButton(
      {this.text = '',
      this.pressed = null,
      this.width = 80.0,
      this.height = 30.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      child: RaisedButton(
        child: Text(this.text),
        onPressed: this.pressed,
      ),
    );
  }
}
