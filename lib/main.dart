import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const DicePage());
}
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicepageno = 1;
  int rightdicepageno = 2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("DicePage"),
          backgroundColor: Colors.red,
        ),
        backgroundColor: Colors.red,
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(onPressed: () {
                  onPress();
                },
                  child: Image.asset("images/dice$leftdicepageno.png"),
                ),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {
                      onPress();
                    },
                    child: Image.asset("images/dice$rightdicepageno.png")),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onPress(){
    setState(() {
      leftdicepageno = Random().nextInt(6)+1;
      rightdicepageno = Random().nextInt(6)+1;
    });

  }
}




