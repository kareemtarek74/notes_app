import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BasketBall());
}

int teamApoint = 0;
int teamBpoint = 0;

class BasketBall extends StatefulWidget {
  @override
  State<BasketBall> createState() => _BasketBallState();
}

class _BasketBallState extends State<BasketBall> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('points counter'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/birthday_card.png'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Team الايبوب',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '$teamApoint',
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamApoint++;
                        });
                      },
                      child: Text(
                        'add 1 point',
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(50, 40),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamApoint += 2;
                        });
                      },
                      child: Text(
                        'add 2 point',
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(50, 40),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamApoint += 3;
                        });
                      },
                      child: Text(
                        'add 3 point',
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(50, 40),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 60,
                    endIndent: 60,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      'Team الديزل',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '$teamBpoint',
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBpoint++;
                        });
                      },
                      child: Text(
                        'add 1 point',
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(50, 40),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBpoint += 2;
                        });
                      },
                      child: Text(
                        'add 2 point',
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(50, 40),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBpoint += 3;
                        });
                      },
                      child: Text(
                        'add 3 point',
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(50, 40),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 70),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: Size(110, 40)),
                  onPressed: () {
                    setState(() {
                      teamApoint = 0;
                      teamBpoint = 0;
                    });
                  },
                  child: const Text(
                    'Reset',
                    style: TextStyle(color: Colors.black),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
