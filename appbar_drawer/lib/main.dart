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
      //Drawer->자동으로 메뉴가 생김
      //column,row처럼 복수의 위젯을 나열하는 위젯 리스트가 children 위젯을 통해 호출됨
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          //리스트 뷰는 여러줄 정보를 보여쥬는 목록이기때문에 children속성을 씀
          children: <Widget>[
            //사용자 이미지와 정보를 보여줌
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/icon.png'),
                backgroundColor: Colors.white,
              ),
              accountName: Text('bbanto'),
              accountEmail: Text('dbswl330@gmail.com'),
              onDetailsPressed: () {
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0)
                )
              ),
            )
             
          ],
        ),
      ),
    );
  }
}
