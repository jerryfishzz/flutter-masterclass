import 'package:flutter/material.dart';
import 'package:flutter_masterclass/coffee_prefs.dart';
import 'package:flutter_masterclass/styled_body_text.dart';

// Type 'STL' then choose to create a stateless widget
class Home extends StatelessWidget {
  const Home({super.key});

  // Hot reload needs build method
  @override
  Widget build(BuildContext context) {
    // Scaffold can make material styles display properly in the app
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Coffee Id',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.brown[700],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.brown[200],
            padding: const EdgeInsets.all(20),
            child: const StyledBodyText('How I like my coffee...'),
          ),
          Container(
            color: Colors.brown[100],
            padding: const EdgeInsets.all(20),
            child: const CoffeePrefs(),
          ),
          Expanded(
              child: Image.asset(
            'assets/img/coffee_bg.jpg',
            fit: BoxFit.fitWidth,
            alignment: Alignment.bottomCenter,
          ))
        ],
      ),
    );
  }
}
