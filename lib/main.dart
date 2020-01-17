import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
// import './screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foreign Jounal',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: CalendarCarousel(),
    );
  }
}
