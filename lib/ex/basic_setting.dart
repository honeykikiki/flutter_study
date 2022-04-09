import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '성진앱',
        theme: ThemeData(primarySwatch: Colors.amber),
        home: MyHomeApp());
  }
}

class MyHomeApp extends StatelessWidget {
  const MyHomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('성진 앱'),
      ),
      body: Center(
          child: Row(
        children: [
          Text('허'),
        ],
      )),
    );
  }
}
