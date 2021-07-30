import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

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
  const MyPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(

        //row위젯->column위젯들의 특징들이 그대로 적용됨

          child: Row(  //Coiumn(
            //세로축으로 같은간격에 배치
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //세로축으로 맨위부터 맨아래까지 같은간격 배치
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            //가로축정렬 end->끝정렬
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //end대신 stretch 쓰면 가로로 꽉 채워짐
            children: [
              Container(
                width: 100,
                height: 100,
                color:  Colors.white,
                child: Text('Container 1'),
              ),
              //투명박스 넣어서 공간 만들기
              SizedBox(
                width: 30,
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
                child: Text('Container 3!!'),
              ),

            ],
          ),
        ),
      
    );
  }
}

