import 'package:flutter/material.dart';
import 'package:log_in_firebase/login_app/login.dart';

class MyButton extends StatelessWidget {
  MyButton(
      {this.image,
       this.text,
       this.color,
       this.radius,
       this.onPressed});

  //재사용을 위한 속성을 지정
  //속성이 필요로 하는 요소에 따라 변수의 타입을 지정
  final Widget image;
  final Widget text;
  final Color color;
  final double radius;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: SizedBox(
        height: 50.0,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: color,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(radius)))),
            onPressed: onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                image,
                text,
                Opacity(
                  opacity: 0.0,
                  child: Image.asset('images/glogo.png'),
                ),
              ],
            )),
      ),
    );
  }
}
