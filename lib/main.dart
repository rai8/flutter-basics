


import 'package:appulda/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:appulda/pages/loading.dart';
import 'package:appulda/pages/choose_location.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context)=>Loading(),
    '/home': (context)=>Home(),
    '/location': (context)=>ChooseLocation(),

  },
));

