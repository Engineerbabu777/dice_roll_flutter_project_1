import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Center(
            child: Text('Dice Project'),
          ),
          backgroundColor: Colors.blue,
        ),
        body: const DiceApp(),
      ),
    ),
  );
}

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {

  int leftDiceNumber  = 5;
  int rightDiceNumber = 1;

  void update(){
    setState(() {
      leftDiceNumber = Random().nextInt(6)+1;
      rightDiceNumber = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child:Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed:() {
                   update();
                  },
                  child: Image(image: AssetImage('images/dice$leftDiceNumber.png'),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed:() {
                    update();
                  },
                  child: Image(image: AssetImage('images/dice$rightDiceNumber.png'),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}



