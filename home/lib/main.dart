import 'package:flutter/material.dart';
import 'package:home/Screens/DetailsScreen.dart';
import 'package:home/Screens/ProfileScreen.dart';
import 'package:home/Screens/VehicleScreen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/profile',
    debugShowCheckedModeBanner: false,
    routes:{
      '/profile': (context)=> Profilescreen(),
      '/details':(context)=> DetailScreen(),
      '/vehicle':(context)=>VehicleScreen(),
    },
  ));
}

