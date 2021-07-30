import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'navigator_1',
      theme: ThemeData(
        primaryColor: Colors.red[400],
      ),
      home: FirstPage(),
    );
  }
}

//First Route
class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context2) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go To The Second Page'),
          onPressed: () {
            Navigator.push(context2,
                MaterialPageRoute(
                  builder: (_) => SecondPage()));
                  //_ ->사용하지 않는 매개변수
          },
        ),
      ),
    );
  }
}

//route는 반드시 material앱 위젯 아래에 child로 생선 되어야만 함!!(모든 위젯)
//Second Route
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Secont Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go To The First Page'),
          onPressed: () {
            Navigator.pop(ctx);
          },
        ),
      ),
    );
  }
}
