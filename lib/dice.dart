import 'dart:math';
import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice = Random().nextInt(6) + 1;
  int rightDice = Random().nextInt(6) + 1;

  void chooseNumber() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dicee'),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: chooseNumber,
              child: SizedBox(
                width: 140,
                child: Image.asset('images/dice$leftDice.png'),
              ),
            ),
            GestureDetector(
              onTap: chooseNumber,
              child: SizedBox(
                width: 140,
                child: Image.asset('images/dice$rightDice.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
