import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(home: MagicBallPage()),
    );

class MagicBallPage extends StatelessWidget {
  const MagicBallPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[500],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('Ask Me Anything'),
        ),
        body: MagicBall());
  }
}

class MagicBall extends StatefulWidget {
  const MagicBall({Key key}) : super(key: key);

  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;
  void random() {
    setState(
      () {
        ballNumber = Random().nextInt(5) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
          onPressed: () {
            random();
            print(ballNumber);
            print("MagicBall pressed");
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
