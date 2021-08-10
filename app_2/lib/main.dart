//라이브러리 가져오기(SDK의 요소들을 사용)
//i+tab  fm+tab
import 'package:flutter/material.dart';

//r+tab 최상위 함수 , MyApp->커스텀 위젯(위젯 트리에서 최상위 위젯)
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Charactor card", //앱을 총칭하는 이름
      home:MyCard(),
    );
  }
}

class MyCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BBANITO'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
      ),
      //Center-> Colomn위젯의 자식들에 대한 세로축 위치에는 관여하지 않고 컬럼위젯의 자식위젯 새로축 높이에 자동으로 픽스됨
      //column을 가로축 상으로 정중앙->Center
      //column을 세로축 상으로 정중앙->mainAxisAlignment
      body: Center(
        child: Column(
            //위젯들을 세로로 정렬할 때 사용
            mainAxisAlignment: MainAxisAlignment.center ,
            children: [
              Text("hello"),
              Text("hello"),
              Text("Hello")
            ],
          ),
      ),
      
    );
  }
}
