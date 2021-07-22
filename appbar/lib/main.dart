import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(primaryColor: Colors.red),
      //MyPage(커스텀 위젯 불러오기)
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //center과 elevation 속성 적용
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        //메뉴 아이콘 leading속성은 위젯이나 아이콘을 엡바타이틀 왼쪽에 위치시킴(appbar에만 쓰이는 것은 아님)
        //(icon위젯불러옴(메뉴))
        leading: IconButton(
          //icon 속성 불러오기, icon 위젯 불러오기
          icon: Icon(Icons.menu),
          onPressed: () {
            print('menu button is clicked');
          },
        ),
        //다음과 같은 속성은 대괄호 안에 한개 이상의 위젯 리스트를 가짐. appbar경우 주로 아이콘 버튼 위젯이 옴
        actions: <Widget>[ 
          IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {
            print('shopping button is clicked');
          },
        ),
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            print('search button is clicked');
          },
        ),
        ],
      ),
    );
  }
}

//leading속성: 아이콘 버튼이나 간단한 위젯을 왼쪽에 배치
//actions속성: 복수의 아이콘 버튼 등을 오른쪽에 배치
//onPressed: 함수의 형태로 일반 버튼이나 아이콘 버튼을 터치했을 때 일어나는 이벤트를 정의하는 곳