import 'package:flutter/material.dart';

/* void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('Hello there'),
    );
  }
} */

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green[300],
            title: Text('My First App'),
            centerTitle: true,
          ),
          body: Center(
            child: Text(
            'This is the body',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.grey[600],
              fontFamily: 'IndieFlower'
              
            ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){},
            backgroundColor: Colors.green[300],
            child: Text('Click'),
          ),
        ),
      ),
    );
