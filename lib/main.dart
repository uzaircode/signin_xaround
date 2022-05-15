import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('xaround'),
          backgroundColor: Colors.black,
          centerTitle: true,
        ), // AppBar
        body: const DicePage(),
      ), // Scaffold
    ), // MaterialApp
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  @override
  Widget build(BuildContext context) {
    return const Center(
    );
  }
}
