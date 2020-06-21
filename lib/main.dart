import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Ball(),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballnumber=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: (AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          'Ask Me Anything',
          style: TextStyle(color: Colors.white),
        ),
      )),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                  child: FlatButton(child: Image.asset('images/ball$ballnumber.png'),onPressed: (){
                   // print('Ball Clicked');
                    setState(() {
                      ballnumber =Random().nextInt(5)+1;
                    });
                  },)),
            )
          ],
        ),
      ),
    );
  }
}
