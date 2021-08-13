import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Future',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: FutureHome(),
    );
  }
}

class FutureHome extends StatefulWidget {
  @override
  _FutureHomeState createState() => _FutureHomeState();
}

class _FutureHomeState extends State<FutureHome> {
  String result = 'no data found';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Future test'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  futureTest();
                },
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Future test',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                '$result',
                style: TextStyle(fontSize: 20.0, color: Colors.redAccent),
              ),
              Divider(
                height: 20.0,
                thickness: 2.0,
              ),
              FutureBuilder(
                future: myFuture(),
                //builder의 인자 중 하나인snapshot은  특정 시점의 데이터를 복사해서 보관하는 역할을 함.
                builder: (context, snapshot) {
                  // snapshot이 복사해서 가지고 있는 리턴된 future 데이터가 실제로 존재하는지 확인해야 함(if). future가 완료된 상태에만 화면에 유아이를 그릴 수 있음
                  if (snapshot.connectionState == ConnectionState.done) {
                    //화면 출력
                    return Text(
                      snapshot.data,
                      style: TextStyle(fontSize: 20.0, color: Colors.blue),
                    );
                  }
                  return CircularProgressIndicator();
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> futureTest() async {
    //await를 만나면 futuredelayed가 실행이 끝날 때 까지 3초를 기달미 그리고 나서 then이 실행되며 second프린츠가 출력 됨. 그리고 나서 setstate가 실행 되며 result의 새로운 값이 할당 됨 그리고 프린트문이 차례로 출력.then이 끝나고 프린트문 두개 출력 됨.
    await Future.delayed(Duration(seconds: 3)).then((value) {
      print('Here comes second');
      setState(() {
        this.result = 'The data is fetched';
        print(result);
        print('Here comes third');
      });
    });
    print('Here comes first');
    print('Here is the last one');
    //다트가 futureTest함수에서 Future를 만나게 되면 관련 코드들을 이벤트 큐에 넣어두고 그 다음 코드들을 싱크로너스하게 처리하므로 프린트를 먼저 출력 되고 이벤트 루프가 퓨처를 실행하고 곧이어 then메소드가 실행됨.
  }

  Future<String> myFuture() async {
    await Future.delayed(Duration(seconds: 2));
    //2초 딜레이 후 리턴, 시각적으로 스크린에 리턴값을 그려줄려면  futureBuilder를 사용함.
    return 'another Future completed';
  }
}
