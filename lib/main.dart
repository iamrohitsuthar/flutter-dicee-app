import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNo = 4;
  int rightDiceNo = 2;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Dicee',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 64,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 32, right: 16),
                    child: Image.asset('images/dice$leftDiceNo.png'),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 32),
                    child: Image.asset('images/dice$rightDiceNo.png'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              margin: EdgeInsets.only(left: 130, right: 130),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    leftDiceNo = Random().nextInt(6) + 1;
                    rightDiceNo = Random().nextInt(6) + 1;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.shuffle,
                        color: Colors.black87,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Shuffle',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
