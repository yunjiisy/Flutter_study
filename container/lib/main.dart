import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      //보여지길 원하는 컨텐츠가 화면 밖으로 빠져나가지 않게 경계를 지정해줌(safe Area)
      body: SafeArea(
        //container위젯은 child없으면 페이지 내에서 최대한의 공간을 차지하려 함.
      //->child없으면스크린 전체를 차지하므로 빨간색이 됨
              child: Container(
          color: Colors.red,
          width: 100,
          height: 100,
          margin: EdgeInsets.symmetric(
            vertical: 80,
            horizontal: 20,
          ),
          padding: EdgeInsets.all(20),
          //container 는 오직 하나의 child만 가짐
          child: Text('Hello'), 

        ),
      ),
    );
  }
}