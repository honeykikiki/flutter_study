import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // flutter 빨간띠 없애주는 코드
      title: 'BBANRO',
      home: Grade(),
    );
  }
}


class Grade extends StatelessWidget {
  const Grade({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: const Text('BBANTO'),
        backgroundColor: Colors.amber[600],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/kikiki.png'),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30.0,
            ),
            const Text('NAME', style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text('BBANTO ', style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Text('BANNTO POWER LEVEL', style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text('14 ', style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              children: const <Widget>[
                Icon(Icons.child_care_outlined),
                SizedBox(width: 10.0),
                Text('using lightsaver', style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0
                ),)
              ],
            ),
            Row(
              children: const <Widget>[
                Icon(Icons.child_care_outlined),
                SizedBox(width: 10.0),
                Text('face here tatto', style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0
                ),)
              ],
            ),
            Row(
              children: const <Widget>[
                Icon(Icons.child_care_outlined),
                SizedBox(width: 10.0),
                Text('fire flames', style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0
                ),)
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: const AssetImage('assets/honey.png'),
                radius: 40.0,
                backgroundColor:Colors.amber[800],
              ),
            )
          ]
        ),
      ),
    );
  }
}