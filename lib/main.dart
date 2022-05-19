import 'package:flutter/material.dart';
import 'package:xylophone/audioscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('My Xylophone'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: AudioScreen(),
      ),
    );
  }
}

