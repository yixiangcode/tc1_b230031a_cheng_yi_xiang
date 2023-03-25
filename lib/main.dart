import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(BallPage());
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            foregroundColor: Colors.redAccent,
            backgroundColor: Colors.yellowAccent,
            title: Center(
              child: Text("~Ask Me Anything~",
                style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Raleway'),
              ),
            )),
          body: Ball(),
      ));
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  @override
  int ballNumber = 0;
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: TextButton(
          onPressed: (){
            setState(() {
              randomize();
            });
            print("The image is ball$ballNumber.png");
          },
          child: Image(
              image: AssetImage("images/ball$ballNumber.png"),width: 400.0,height: 400.0,
          ),
        ),
      )
    );
  }
  void randomize() {
    ballNumber = Random().nextInt(5) + 1;
  }
}

