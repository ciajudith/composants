// import 'package:composants/exemple_one.dart';
import 'package:composants/exemple_three.dart';
import 'package:composants/exemple_two.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Composant());

class Composant extends StatelessWidget {
  const Composant({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Composant',
      debugShowCheckedModeBanner: false,
      home: ExampleThree(),
    );
  }
}
