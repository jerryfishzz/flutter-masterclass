import 'package:flutter/material.dart';

// Type 'STL' then choose to create a stateless widget
class Home extends StatelessWidget {
  const Home({super.key});

  // Hot reload needs build method
  @override
  Widget build(BuildContext context) {
    // Scaffold can make material styles display properly in the app
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Coffee Id'),
        backgroundColor: Colors.brown[700],
        centerTitle: true,
      ),
      body: Container(
        color: Colors.orange,
        // width: 200,
        // height: 100,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.fromLTRB(10, 40, 0, 0),
        child: const Text(
          'Hello, Jerry',
          style: TextStyle(
              fontSize: 18,
              letterSpacing: 4,
              decoration: TextDecoration.underline,
              fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}

// Container - wrap other widgets
// Can apply padding and margin easily; can apply a color.
// By default, container's width and heigh are decided by its children.
// Can also specify the width and height.
// If NO children, container will try to occupy the space as possible as it can.