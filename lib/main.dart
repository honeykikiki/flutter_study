import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('AppBar Icon Menu'),
        elevation: 0.0,
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   onPressed: () { 
        //     print('menu button');
        //   },
        // ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () { 
              print('shopingCart');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () { 
              print('search');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('honey'),
              accountEmail: Text('honey.kikiki'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/honey.png'),
                backgroundColor: Colors.white
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/honey.png'),
                  backgroundColor: Colors.white
                ),
                // CircleAvatar(
                //   // backgroundImage: AssetImage('assets/honey.png'),
                //   backgroundColor: Colors.black
                // )
              ],
              onDetailsPressed: () {
                print('arrow in clicked');
              },
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0)
                )
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.grey,),
              title: Text('Home'),
              onTap: () {
                print('Home');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.grey,),
              title: Text('settings'),
              onTap: () {
                print('settings');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer, color: Colors.grey,),
              title: Text('Q&A'),
              onTap: () {
                print('Q&A');
              },
              trailing: Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}