import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

//MyApp위젯이 상속하고 있는 StatefulWidget클래스는 imutable함.(한번 생성 되면 state가 변하지 않음)
//따라서 Stateful을 상속받은 myapp은 Stateful위젯임과 동시에 Stateless웨젯처럼 inmutable함 Staeful은 state의 변화를 반영해야 하기 때문에 MyAppState클래스가 mutable한 틋성을 대신해줌
class MyAppState extends State<MyApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('stateful widget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('You have Pushed The Button This Many Time: '),
              Text(
                '$counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                      child: Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          counter++;
                          print('$counter');
                        });
                      }),
                      SizedBox(
                        width: 20.0,
                      ),
                      FloatingActionButton(
                        child: Icon(Icons.remove),
                        onPressed:() {
                          counter--;
                          print('$counter');
                        } )
                ],
              )
            ],
          ),
        ),

        // floatingActionButton: FloatingActionButton(
        //   child: Icon(Icons.add),
        //   onPressed: () {
        //     //setstate는 counter변수의 숫자가 증가함에 따라 counter변수를 사용하고 있는 위젯을 표시
        //     //숫자의 증가로 state가 변했고 이변화를 반영해 rebuild해야 하기 때문.->setstate가 표시해준 위젯들을 dirty라고 부름 이 경우엔 Text('$counter')가 dirty임
        //     setState(() {
        //       counter++;
        //       print('$counter');
        //     });

        //   },
        // ),
      ),
    );
  }
}
