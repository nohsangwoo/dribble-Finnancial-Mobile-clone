import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Player {
  late String name;

  Player({required this.name});
}

void main() {
  var sangwoo = Player(name: "sangwoo");

  //
  runApp(App(name: sangwoo.name));
}

// widget이되기위해선 flutter sdk에서 제공하는 3개의 core widget중에 하나를 extend해야한다.
// StatelessWidget를 상속받으면 build라는 메소드를 구현해야한다.
// build메소드는 무엇을 return하는가에 따라 화면에 어떤 widget이 보여질지 결정된다.
class App extends StatelessWidget {
  String name;
  App({required this.name});
  // build 메소드는 Widget을 return해야한다.
  // Widget의 종류에는 material(google style), cupertino(ios style), widgets 등이 있다.
  // MaterialApp은 material style의 widget이다.
  // flutter는 goolge이 만들었기 때문에 material style이 더 보기 좋다.
  @override
  Widget build(BuildContext context) {
    // 각각의 화면은 scaffold를 가져야 한다.(일종의 구조라고 생각하면 된다.)
    return MaterialApp(
        home: Scaffold(
      //custom color를 설정하는 방법
      backgroundColor: Color(0xFF181818),
      // 위젯 위에 다른 위젯을 올리고 싶으면 Column을 사용해야한다.
      body: Padding(
          // EdgeInsets 패딩을 설정하는 메소드
          // EdgeInsets.all(10) 싱히좌우 모두 10의 패딩을 준다.
          // EdgeInsets.only(top:20) 상단 부분만 20의 패딩을 준다.
          // EdgeInsets.symmetric(vertical: 30) 상하 부분만 30의 패딩을 준다.
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
              ),
              Row(
                // Row에사 수평 정렬 방식(flex랑 비슷함)
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    // Column에서 수평 정렬방식
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Hey, Selena",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        "Welcome back",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 120,
              ),
              Text(
                "Total Balance",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "\$5 194 482",
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(45),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 50,
                        ),
                        child: Text(
                          "Transfer",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ))
                ],
              )
            ],
          )),
    ));
  }
}
