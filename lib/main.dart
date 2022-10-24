import 'package:flutter/material.dart';
import 'package:flutter_netcore_sql/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FLUTTER-NETCORE-SQL',
      theme: ThemeData(),
      home: const HomeScreen(),
    );
  }
}
