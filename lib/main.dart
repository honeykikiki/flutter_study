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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          verticalDirection: VerticalDirection.up,
          children: [
            Column(
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
              ],
            ),
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