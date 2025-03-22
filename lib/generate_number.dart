import 'package:flutter/material.dart';
import 'dart:math';

int? number;
bool isTapped = false;

class GenerateNumber extends StatefulWidget {
  const GenerateNumber({super.key});
  @override
  State<StatefulWidget> createState() {
    return _GenerateNumberState();
  }
}

class _GenerateNumberState extends State<GenerateNumber> {
  @override
  Widget build(BuildContext context) {
    void generateNumber() {
      setState(() {
        number = Random().nextInt(100);
        isTapped = false;
      });
    }

    void resetNumber() {
      setState(() {
        number = null;
        isTapped = true;
      });
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          number == null ? "Tap to get a number" : "$number",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 25),
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.grey,
            padding: EdgeInsets.fromLTRB(75, 10, 75, 10),
          ),

          onPressed: generateNumber,
          child: Text(
            "Generate",
            style: TextStyle(fontSize: 20.0, color: Colors.black),
          ),
        ),
        SizedBox(height: 25),
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.grey,
            padding: EdgeInsets.fromLTRB(75, 10, 75, 10),
          ),

          onPressed: isTapped ? null : resetNumber,
          child: Text(
            "Reset",
            style: TextStyle(fontSize: 20.0, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
