import 'package:finally_plz/SocketClient/SocketState.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '네모션 프로젝',   //  MyApp Title 설정
      theme: ThemeData(     // MyApp Theme 설정
        primarySwatch: Colors.blue,   //  사용자와 상호작용하는 앨리먼트들의 기본 색상 = Blue
        visualDensity: VisualDensity.adaptivePlatformDensity, //
      ),
      home: MyHomePage(title: 'Smart Glasses'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Expanded(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                RaisedButton(
                  child: Text("Main System", style: TextStyle(fontSize: 15)),
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SocketState(),
                      )
                    ),
                  },
                ),
                RaisedButton(
                  child: Text("추후 추가 예정", style: TextStyle(fontSize: 15)),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}