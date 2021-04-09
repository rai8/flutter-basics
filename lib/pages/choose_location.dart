import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    //simulate a network request for a user
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'Yoshi';
    });
    //simulate a network request for user biography
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'vegan, meat pie lover';
    });

    print('$username - $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Choose a Location'),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Text('This is the choose location screen'),
    );
  }
}
