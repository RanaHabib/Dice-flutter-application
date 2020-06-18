import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
      DiceRoll()
  );
}

class DiceRoll extends StatefulWidget {
  @override
  _DiceRollState createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  int randDice1=1;
  int randDice2=1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffdfcdc3),
        appBar: AppBar(
          backgroundColor: Color(0xff3c4245),
          title: Text('Roll Dice'),
        ),
        body: SafeArea(
          child: Container(
            color: Color(0xffdfcdc3),
            child: Center(
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child:
                    FlatButton(
                        onPressed: (){
                          setState(() {
                            randDice1 = Random().nextInt(6)+1;
                          });
                        },
                        child: Image.asset('images/$randDice1.png')),
                  ),
                  Expanded(
                    flex: 1,
                    child:
                    FlatButton(
                        onPressed: (){
                          setState(() {
                            randDice2 = Random().nextInt(6)+1;
                          });
                        },
                        child: Image.asset('images/$randDice2.png')),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
