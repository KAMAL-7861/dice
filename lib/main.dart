import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black38,
        appBar: AppBar(
          title: Center(child:
          Text('Dice'),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdice = 1;
  int rightdice = 1;
  void changedice(){
    leftdice = Random().nextInt(6) + 1 ;
    print('Dice number = $leftdice');
    rightdice = Random().nextInt(6)+ 1;
    print('Dice Number = $rightdice');
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    print('kamal pressed');
                    changedice();
                  });
                },
                child: Image.asset('images/dice$leftdice.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
               child: TextButton(
                onPressed: () {
                  setState(() {
                    print('Computer pressed');
                    changedice();
                  });
                },
                child: Image.asset('images/dice$rightdice.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
