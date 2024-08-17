import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      // Scaffold can make material styles display properly in the app
      home: Scaffold(
    appBar: AppBar(
      title: const Text('My Coffee Id'),
      backgroundColor: Colors.brown[700],
      centerTitle: true,
    ),
    body: const Home(),
  )));
}

// Type 'STL' then choose to create a stateless widget
class Home extends StatelessWidget {
  const Home({super.key});

  // Hot reload needs build method
  @override
  Widget build(BuildContext context) {
    return const Text('Hello, Jerry!!');
  }
}
