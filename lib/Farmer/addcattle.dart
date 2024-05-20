import 'package:flutter/material.dart';

class Addcattle extends StatefulWidget {
  const Addcattle({super.key});

  @override
  State<Addcattle> createState() => _AddcattleState();
}

class _AddcattleState extends State<Addcattle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Cattle'),
      ),
      body: const Center(
        child: Text('Add cattle'),
      ),
    );
  }
}
