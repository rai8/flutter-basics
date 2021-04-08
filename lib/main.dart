import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Home(),
      ),
    );

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: Text('My First App'),
        centerTitle: true,
      ),
      body: Row(
        children: <Widget>[
          Expanded(child: Image.asset('assets/crystal.jpg')),
          Expanded(
                      child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.cyan,
              child: Text('Container 1'),
            ),
          ),
          Expanded(
                      child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.amber,
              child: Text('Container 2'),
            ),
          ),
          Expanded(
                      child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.pink,
              child: Text('Container 3'),
            ),
          ),
        ],
          
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('you clicked me');
        },
        backgroundColor: Colors.green[300],
        child: Text('Click'),
      ),
    );
  }
}
