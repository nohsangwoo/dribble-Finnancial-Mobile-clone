import 'package:flutter/material.dart';
import 'package:toonflix/widgets/Button.dart';

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
  App({super.key, required this.name});
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
      backgroundColor: const Color(0xFF181818),
      // 위젯 위에 다른 위젯을 올리고 싶으면 Column을 사용해야한다.
      body: Padding(
        // EdgeInsets 패딩을 설정하는 메소드
        // EdgeInsets.all(10) 싱히좌우 모두 10의 패딩을 준다.
        // EdgeInsets.only(top:20) 상단 부분만 20의 패딩을 준다.
        // EdgeInsets.symmetric(vertical: 30) 상하 부분만 30의 패딩을 준다.
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
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
                    const Text(
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
            const SizedBox(
              height: 120,
            ),
            Text(
              "Total Balance",
              style: TextStyle(
                fontSize: 22,
                color: Colors.white.withOpacity(0.8),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "\$5 194 482",
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Button(
                  text: "Transfer",
                  bgColor: Color(0xFF1F2123),
                  textColor: Colors.black,
                ),
                Button(
                  text: "Request",
                  bgColor: Color(0xFF1F2123),
                  textColor: Colors.white,
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "Wallets",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF1F2123),
                borderRadius: BorderRadius.circular(
                  25,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(
                  30,
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Euro",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Text(
                              "6 428",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "EUR",
                              style: TextStyle(
                                color: Colors.white.withOpacity(
                                  0.8,
                                ),
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
