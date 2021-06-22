import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                'Ask Me Anything',
              ),
            ),
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int mbAnswer = 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      mbAnswer = Random().nextInt(5) + 1;
                    });
                  },
                  child: Image.asset(
                    'images/ball$mbAnswer.png',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
