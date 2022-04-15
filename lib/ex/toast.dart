import 'package:flutter/material.dart'; // 데스크탑, 앱 등에 고루 UI를 적용할 수 있게 해주는 구글이 제공해주는 패키
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // 실질적으로 모든 앱을 감싸고 있다.
      title: 'Appbar', // 앱을 총칭하는 이름 -> 스마트 폰 앱에서 최근 사용한 앱 보여줄 때의 이름
      theme:
          ThemeData(primarySwatch: Colors.red // 특정색의 응용들을 기본 색상으로 지정해서 사용하겠
              ),
      home: MyPage(), // home은 앱이 실행될 때 가장먼저 보여주는 페이
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toast Bar'),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            print('TextButton is clicked');
            flutterToast(); // 함수 호출
          },
          child: Text('Toast'),
          //color: Colors.blue
        ),
      ),
    );
  }
}

void flutterToast() {
  Fluttertoast.showToast(
      msg: "This is Center Short Toast", // 메시지 내용
      toastLength: Toast.LENGTH_SHORT, // 메시지 시간 - 안드로이드
      // gravity: ToastGravity.BOTTOM, // 메시지 위치
      timeInSecForIosWeb: 1, // 메시지 시간 - iOS 및 웹
      backgroundColor: Colors.red, // 배경
      textColor: Colors.black, // 글자
      fontSize: 26.0,
      webBgColor:'red',
      webPosition: 'center' // 위치 조절
    ); // 글자 크기
}
