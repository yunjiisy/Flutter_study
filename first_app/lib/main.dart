//라이브러리 가져오기(SDK의 요소들을 사용)
//i+tab  fm+tab
import 'package:flutter/material.dart';

//r+tab 최상위 함수 , MyApp->커스텀 위젯(위젯 트리에서 최상위 위젯)
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First app", //앱을 총칭하는 이름
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home:MyHomePage() ,
    );
  }
}
//stl+  tab(stateless)
class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Scaffold: 앱 화면에 다양한 요소 배치하고 그리도록 도와주는 빈 도화지 역할
    return Scaffold( 
     appBar: AppBar(
        title: Text('First app'), //앱바에 출력되는 타이틀
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Hello'),
            Text('Hello'),
            Text('Hello')
           ],)
      ),
    );
  }
}