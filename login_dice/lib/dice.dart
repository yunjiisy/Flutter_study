import 'package:flutter/material.dart';
import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice = 1;
  int rightDice = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.red[100],
        title: Text('Dice Game'),
      ),
      body: Center(
        //center 위젯의 child로 column이나 row위젯이 왔을 때 어떤 요소 화면 정 중앙에 배치 할려면 mainaxisalignment속성을 이용
        child: Column(
          //세로 축 상으로 중앙
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(32.0),
              child: Row(
                //가로로 정 중앙-> mainaxisalignment속성 이용
                //주축 정렬!
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //가능한 모든 공간으로 확장-> 두개의 이미지가 반씩 공간을 차지.
                  Expanded(child: Image.asset('image/dice$leftDice.png')),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(child: Image.asset('image/dice$rightDice.png')),
                ],
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            ButtonTheme(
              minWidth: 100,
              height: 60.0,
              child: ElevatedButton(
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 50.0,
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.orangeAccent),
                  //set state함수 -> 조금 매운맛 2번강좌
                  onPressed: () {
                    setState(() {
                      leftDice = Random().nextInt(6) + 1;
                      rightDice = Random().nextInt(6) + 1;
                    });
                    showToast(
                        "Left dice: {$leftDice},  Right dice: {$rightDice} ");
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

void showToast(String message) {
  Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM);
}
