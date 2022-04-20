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

// 06e4340acdd3540565eb19f0a7de87208a9ab54e
// Wed Apr 20 21:54:21 2022 +0900
// Tue Apr 19 11:00:00 2022 +0900

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          verticalDirection: VerticalDirection.up,
          children: [
            Container(
              height: 100.0,
              color: Colors.blue,
              child: const Text('container1'),
            ),
            Container(
              height: 100.0,
              color: Colors.red,
              child: const Text('container2'),
            ),
            Container(
              height: 100.0,
              color: Colors.green,
              child: const Text('container3'),
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