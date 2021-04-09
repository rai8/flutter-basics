import 'package:appulda/services/world_time.dart';
import 'package:flutter/material.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  //await is applied to void which is nt a future
  void setupWorldTime() async {
    WorldTime instance = WorldTime(
        location: 'Kenya', flag: 'Germany.png', url: 'Africa/Nairobi');

    //get time for a given location
    await instance.getTime();
    //then redirect to the home page
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
     backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitFadingCube(
          color: Colors.cyan[600] ,
          size: 140.0,
          ),
      ),
    );
  }
}
