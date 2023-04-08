import 'package:flutter/material.dart';
import 'package:paypersa/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PayPersa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(color: Colors.black,fontSize: 22, fontWeight: FontWeight.w500),
          elevation: 0,
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.black)
        )
      ),
      home: HomePage(),
    );
  }
}