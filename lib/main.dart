import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '성진앱',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: MyCard()
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BBANTO'),
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello'),
            Text('Hello'),
            Text('Hello'),
          ],
        ),
      )
    );
  }
}