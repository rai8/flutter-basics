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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            'Hello world'
          ),
          FlatButton(
            onPressed: null,
            color: Colors.green[300], 
            child: Text('click me')
            ),
            Container(
              color: Colors.cyan,
              padding: EdgeInsets.all(10.0),
              child: Text('conteiner text'),
            ),
        ],//this means the children properties should be a list of widgets
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
