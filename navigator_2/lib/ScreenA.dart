import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenA'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Go To ScreenB'),
              onPressed: () {
                Navigator.pushNamed(context, '/b');
              },
            ),
            ElevatedButton(
              child: Text('Go To ScreenC'),
              onPressed: () {
                Navigator.pushNamed(context, '/c');
              },
            ),
          ],
        ),
      ),
    );
  }
}
