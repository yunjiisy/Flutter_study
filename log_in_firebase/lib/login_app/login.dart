import 'package:flutter/material.dart';
import 'package:log_in_firebase/my_button/my_button.dart';

class Login extends StatelessWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Sign In',
        style: TextStyle(
          color: Colors.white
        ),),
        centerTitle: true,
        elevation: 0.2,
      ),
      body: _buildButton(),
    );
  }
//_->변수나 메소드 앞에 붙은 _는 접근제어자 (private역할) ->같은 파일 내에서만 접근 가능
//즉 private으로 지정된 buildButton메소드는 login.dart파일 내에서만 접근 가능
  Widget _buildButton() {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MyButton(
            image: Image.asset('images/glogo.png'),
            text: Text('Login with Google',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 15.0
            ),),
            color: Colors.white,
            radius: 10.0,
            onPressed: () {}),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: SizedBox(
              height: 50.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                   shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),

                  primary: Colors.blue[800],
                ),
                onPressed: () {} ,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset('images/flogo.png'),
                    Text('Login with Facebook',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15
                    ),),
                    Opacity(
                      opacity: 0.0,
                      child: Image.asset('images/flogo.png'),  
                    ),
                  ],
                )
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5,bottom: 5),
            child: SizedBox(
              height: 50.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[600],
                   shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))
            )
                ),
                onPressed: () {} ,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.mail,
                    color: Colors.white,),
                    Text('Login with Email',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15
                    ),),
                    Opacity(
                      opacity: 0.0,
                      child: Image.asset('images/glogo.png'),
                    ),
                  ],
                )
              ),
            ),
          )
    
        ],
      ),
    );
  }
}