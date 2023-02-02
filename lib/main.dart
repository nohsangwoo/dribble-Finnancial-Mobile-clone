import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  //
  runApp(App());
}

// widget이되기위해선 flutter sdk에서 제공하는 3개의 core widget중에 하나를 extend해야한다.
// StatelessWidget를 상속받으면 build라는 메소드를 구현해야한다.
// build메소드는 무엇을 return하는가에 따라 화면에 어떤 widget이 보여질지 결정된다.
class App extends StatelessWidget {
  // build 메소드는 Widget을 return해야한다.
  // Widget의 종류에는 material(google style), cupertino(ios style), widgets 등이 있다.
  // MaterialApp은 material style의 widget이다.
  // flutter는 goolge이 만들었기 때문에 material style이 더 보기 좋다.
  @override
  Widget build(BuildContext context) {
    // 각각의 화면은 scaffold를 가져야 한다.(일종의 구조라고 생각하면 된다.)
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello flutter!"),
        ),
        body: Center(
          child: Text("Hello world"),
        ),
      ),
    );
  }
}
