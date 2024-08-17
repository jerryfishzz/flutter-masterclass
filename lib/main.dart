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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            color: Colors.red,
            child: const Text('one'),
          ),
          Container(
            width: 200,
            color: Colors.green,
            child: const Text('two'),
          ),
          Container(
            width: 300,
            color: Colors.blue,
            child: const Text('three'),
          ),
        ],
      ),
    );
  }
}

// 'Column' has 'children' field, but not 'child'.
// Column width is dictated by the largest width item inside.
// Use 'CrossAxisAlignment.stretch' will bypass the rule of largest width item.
// Instead, try to occupy the space from its parent as passible as it can. 
