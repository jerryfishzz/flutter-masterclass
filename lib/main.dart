import 'package:flutter/material.dart';
import 'package:flutter_masterclass/home.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandbox'),
        backgroundColor: Colors.grey,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 100,
            color: Colors.red,
            child: const Text('one'),
          ),
          Container(
            height: 200,
            color: Colors.green,
            child: const Text('two'),
          ),
          Container(
            height: 300,
            color: Colors.blue,
            child: const Text('three'),
          ),
        ],
      ),
    );
  }
}

// 'Row' has 'children' field, but not 'child'.
// Row height is dictated by the largest height item inside.
// Use 'CrossAxisAlignment.stretch' will bypass the rule of largest height item.
// Instead, try to occupy the space from its parent as passible as it can,
// possibly the rest of the screen vertically other than app bar.
