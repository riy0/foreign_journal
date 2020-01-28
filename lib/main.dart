import 'package:flutter/material.dart';
import 'package:foreign_journal/screens/detail_screen.dart';
import './screens/journal_list.dart';
import 'package:foreign_journal/screens/home_screen.dart';
import './auth/login.dart';
import './auth/signup.dart';
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
      initialRoute: '/',
      routes: {
        '/': (context) => DetailScreen(),
        '/home': (context) => HomeScreen(),
        //'signup': (context) => SignUp(),
        '/login': (context) => Login(),
        '/journal-list': (context) => JournalList(),
        '/detail-screen': (context) => DetailScreen(),
      },
    );
  }
}
