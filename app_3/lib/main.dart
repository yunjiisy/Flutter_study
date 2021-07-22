import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BBANTO",
      home: Grade( ),
    );
  }
}
class Grade extends StatelessWidget {
  const Grade({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: Text("BBANTO"),
        backgroundColor: Colors.amber[600],
        centerTitle: true,
        elevation: 0.0,
      ),
      body:  Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          //column위젯 내의 모든 요소들을 가로정렬 하기위해 사용.CroeeAxisAlignment
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/icon.png"),
                radius:60.0 ,
                backgroundColor: Colors.white,
              ),
            ),
            Divider(
              //디바이더의 위와 아래의 간격 (각각30px씩 떨어짐)
              height: 60.0,
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30.0,
            ),
            Text("NAME",
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
            ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text("BBANTO",
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text("BBANTO POWER LEVEL",
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
            ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text("14",
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_box_outlined),
                SizedBox(
                  width:10.0 ,
                ),
                Text("using lightsaver",
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0
                ),
                )
              ],
            ),
             Row(
              children: <Widget>[
                Icon(Icons.check_box_outlined),
                SizedBox(
                  width:10.0 ,
                ),
                Text("face hero tattoo",
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0
                ),
                )
              ],
            ),
             Row(
              children: <Widget>[
                Icon(Icons.check_box_outlined),
                SizedBox(
                  width:10.0 ,
                ),
                Text("fire flames",
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0
                ),
                )
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/icon2.png'),
                radius: 40.0,
                backgroundColor: Colors.amber[800],
              ) ,
            )
          ],
        ),
        ),
    );
  }
}