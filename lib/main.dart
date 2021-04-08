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
        child:Image(
         // image: NetworkImage('https://images.unsplash.com/photo-1557008075-7f2c5efa4cfd?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Zm94fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
          image: AssetImage('assets/crystal.jpg'),
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green[300],
        child: Text('Click'),
      ),
    );
  }
}
