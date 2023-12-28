import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Number App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Random Number App'),
        ),
        body: Center(
          child: RandomNumberGenerator(),
        ),
      ),
    );
  }
}

class RandomNumberGenerator extends StatefulWidget {
  const RandomNumberGenerator({Key? key});

  @override
  _RandomNumberGeneratorState createState() => _RandomNumberGeneratorState();
}

class _RandomNumberGeneratorState extends State<RandomNumberGenerator> {
  int randomNumber = 0;

  void generateRandomNumber() {
    setState(() {
      randomNumber = Random().nextInt(100);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Random Number:',
          style: TextStyle(fontSize: 24),
        ),
        Text(
          '$randomNumber',
          style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
        ),
        ElevatedButton(
          onPressed: generateRandomNumber,
          child: Text('Generate'),
        ),
      ],
    );
  }
}
