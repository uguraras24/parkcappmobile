import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "PARKCAPP",
    theme: ThemeData(
      primaryColor: Color(0xFF54D3C2),
    ),
    home: HomePage(),
    );
  }
}
