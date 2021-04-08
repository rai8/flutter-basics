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
      body: Center(
        //child: Image.network('url') or Image.asset('assets/crystal.jpg)
        /* child: Icon(
          Icons.airport_shuttle,
          color: Colors.green[600],
          size: 48,
        ), */
        child:RaisedButton.icon(
        onPressed: (){},
        icon: Icon(
          Icons.mail
        ),
        label: Text('Mail me'),
        color: Colors.green,
        ),
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
