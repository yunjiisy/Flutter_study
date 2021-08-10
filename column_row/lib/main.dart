import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'column_row',
      theme: ThemeData(
        primaryColor: Colors.red[100]
      ),
      home: MyPage(),
      
    );
  }
}

class MyPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        //column은 여러 위젯을 세로로 나열하기 위한 위젯이기 떄문에 children을 가짐.
      //column은 세로축으로는 가능한 공간 다 차지 but가로축 으로는 children의 가로방향으로 크기가 제한됨.->
      //center의 child위젯으로 column이 왔을 경우 mainaxesalignment사용해야 화면의 정중앙에 배치 가능
        child: Center(
          //column이 세로축의 모든 공간을 차지해서 center위젯은 가로로만 위치를 관여->mainAxisalignment사용
          child: Column(
            //가로축 중간정렬
            // mainAxisAlignment: MainAxisAlignment.center,
            //새로축의 모든 공간 못 차지하게함->cente가 가로축으로도 정렬해줌
            mainAxisSize: MainAxisSize.min,
            children: <Widget> [
              Container(
                width: 100,
                height: 100,
                color:  Colors.white,
                child: Text('Container 1'),
              ),
              Container(
                width: 100,
                height: 100,
                color:  Colors.blue,
                child: Text('Container 2'),
              ),
              Container(
                width: 100,
                height: 100,
                color:  Colors.red,
                child: Text('Container 3'),
              )

            ],
          ),
        ) 
        ),
      
    );
  }
}