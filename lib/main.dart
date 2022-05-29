import 'package:flutter/material.dart';
import 'package:talk/screens/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme.light().copyWith( // to use the primaryColor
          primary: const Color(0xff075E54),
          secondary: const Color(0xff128C7E),
        ),
        fontFamily: 'OpenSans',
      ),
      home: const HomeScreen(),
    );
  }
}
