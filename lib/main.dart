import 'package:app_004/generate_number.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Generate Number'), // Title of the AppBar
          centerTitle: true, // Center the title
          backgroundColor: Colors.blue, // Background color of the AppBar
        ),
        body: Center(child: GenerateNumber()),
      ),
    ),
  );
}
