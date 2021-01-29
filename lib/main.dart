import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('DICE',
            style: TextStyle(
              color: Colors.blue,

            ),
          ),
          backgroundColor: Colors.white,
        ),
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
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void setNumber(){
    setState(() {
      leftDiceNumber =1+ Random().nextInt(6);
      rightDiceNumber =1+ Random().nextInt(6);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: FlatButton(onPressed:(){
                setNumber();
              }, child: Image.asset("images/dice$leftDiceNumber.png"))
          ),
          Expanded(
              flex: 1,
              child: FlatButton(onPressed:(){
                setNumber();
              },child: Image.asset("images/dice$rightDiceNumber.png"))
          ),
        ],
      ),
    );
  }
}
