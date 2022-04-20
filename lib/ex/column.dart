import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "continal",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          verticalDirection: VerticalDirection.up,
          children: [
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.blue,
              child: Text('container1'),
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.red,
              child: Text('container2'),
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.green,
              child: Text('container3'),
            ),
            Container(
              width: double.infinity,
            )
          ],
        )
      ),
    );
  }
}