import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';

void main() {
  runApp(new MyApp());
}

final ThemeData kIOSTheme = new ThemeData(
  primarySwatch: Colors.orange,
  primaryColor: Colors.grey[100],
  primaryColorBrightness: Brightness.light,
);

final ThemeData kDefaultTheme = new ThemeData(
  primarySwatch: Colors.purple,
  accentColor: Colors.orangeAccent[400],
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: Platform.isIOS ? kIOSTheme : kDefaultTheme,
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
  Future<String> haha(){

  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var isTure = false;

  _ChangeValue(val) {
    setState(() {
      isTure = true;
    });
  }

  var _userServerController = new TextEditingController();

  var mEditContenner = new TextEditingController(text: "我爱你");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.add), title: Text("hello world")),
      body: new ListView(children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    _ChangeValue(true);
                  },
                  icon: Icon(Icons.library_music),
                  color: Colors.blue,
                ),
                Text(isTure ? "world" : "修改哦！"),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.library_music,
                  color: Colors.blue,
                ),
                Text("world"),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.library_music,
                  color: Colors.blue,
                ),
                Text("world"),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.library_music,
                  color: Colors.blue,
                ),
                Text("world"),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.library_music,
                  color: Colors.blue,
                ),
                Text("world"),
              ],
            ),
          ],
        ),

        Column(
          children: <Widget>[
            Text("hello"),
            Text("world"),
          ],
        ),

        //模仿
        new Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 80.0,
              height: 80.0,
              color: Colors.red,
              margin: EdgeInsets.only(left: 10.0),
              child: Icon(
                Icons.settings_overscan,
                size: 80.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("设备名称"),
                  Text("此处我为消息内容部分"),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 50.0),
              child: Text("2018-12-01"),
            ),
          ],
        ),
        //模仿
        new Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Flexible(
              child: new Icon(
                Icons.settings_overscan,
                size: 80.0,
              ),
              flex: 1,
            ),
            Flexible(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("设备名称"),
                  Text("此处我为消息内容部分"),
                ],
              ),
              flex: 2,
            ),
            Flexible(
              child: Container(
                padding: EdgeInsets.only(left: 50.0),
                child: Text("2018-12-01"),
              ),
              flex: 1,
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30.0),
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          alignment: Alignment.center,
          color: Colors.green,
          height: 50.0,
          width: 100.0,
          child: EditableText(
            backgroundCursorColor:Colors.red,
            controller: mEditContenner,
            focusNode: FocusNode(),
            cursorColor: Colors.redAccent,
            textDirection: TextDirection.ltr,
            textCapitalization: TextCapitalization.characters,
            style: TextStyle(color: Colors.white),
            obscureText: true,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.none,
          ),
        ),
        Container(
          child: TextField(
            controller: mEditContenner,
            decoration: InputDecoration(
              hintText: "输入呀",
              fillColor: Colors.redAccent,
              suffix: Icon(Icons.access_alarm),
              suffixIcon: Icon(Icons.phone),
            ),
            cursorColor: Colors.red,
            onChanged: (t) {
              print("hehe" + t);
            },
            onEditingComplete: () {
              print("完了哦！");
            },
            textDirection: TextDirection.ltr,
            onTap: () {
              print("jljl");
            },
            obscureText: false,
            cursorWidth: 11.0,
            cursorRadius: Radius.circular(11.0),
            autocorrect: false,
            enabled: true,
            autofocus: false,
          ),
        ),
        Container(
          child: TextFormField(
            controller: mEditContenner,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "输入呀",
              fillColor: Colors.redAccent,
              suffix: Icon(Icons.access_alarm),
              suffixIcon: Icon(Icons.phone),
            ),
            onEditingComplete: () {
              print("完了哦！");
            },
            textDirection: TextDirection.ltr,
            obscureText: false,
            autocorrect: false,
            enabled: true,
            autofocus: false,
          ),
        ),
      ]),
    );
  }
}
