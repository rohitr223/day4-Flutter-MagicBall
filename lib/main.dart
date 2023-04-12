import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[300],
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue[300],
        ),
        body: RobotApp(),
      ),
    );
  }
}

class RobotApp extends StatefulWidget {
  const RobotApp({super.key});

  @override
  State<RobotApp> createState() => _RobotAppState();
}

class _RobotAppState extends State<RobotApp> {
  int robotAnswer = 3;

  void answerGenerated() {
    setState(() {
      /*
        Here we have to add '+ 1' because, the random number generator
        ranges from 0 - 4 as we have total 5 images. It starts from 0 and ends
        to 4 i.e. n = 5 i.e. n = 0, n = 5 - 1 = 4. Thats why we add '+ 1' 
        to stop our app from crashing. 
       */
      robotAnswer = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: TextButton(
              onPressed: answerGenerated,
              child: Image.asset('assets/images/ball$robotAnswer.png'),
            ),
          ),
        ],
      ),
    );
  }
}
