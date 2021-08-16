import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({ Key? key }) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 50,
          width: 150,
          child: ElevatedButton(
            onPressed:() {} ,
            child: Text('Get my location',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),),
            style: ElevatedButton.styleFrom(
              primary: Colors.teal
            ),
          ),
        ),
      ),
      
    );
  }
}