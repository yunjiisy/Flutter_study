import 'package:flutter/material.dart';
import 'package:navigator_2/ScreenA.dart';
import 'package:navigator_2/ScreenB.dart';
import 'package:navigator_2/ScreenC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => ScreenA(),
        '/b':(context)=>ScreenB(),
        '/c':(context)=>ScreenC(),
        },
    );
  }
}
