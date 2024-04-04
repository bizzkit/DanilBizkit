import 'package:flutter/material.dart';
import 'package:flutter_test_1/screen/marketScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Market App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromRGBO(39, 40, 62, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(34.0),
              bottomRight: Radius.circular(34.0),
            ),
          ),
        ),
        scaffoldBackgroundColor: const Color.fromRGBO(23, 24, 38, 1),
      ),
      home: MarketScreen(),
    );
  }
}