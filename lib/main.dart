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
            title: Text('My First App'),
            centerTitle: true,
          ),
          body: Center(
            child: Text('This is the body'),
          ),
          floatingActionButton: FloatingActionButton(
            child: Text('Click'),
          ),
        ),
      ),
    );
