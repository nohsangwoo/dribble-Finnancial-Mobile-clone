# toonflix

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# flutter extensions about vsc

- Dart (from Dart Code)
- Flutter (from Dart Code)
  For Debug

# flutter 익숙해지기

## root dir

- ios
  ios앱을 만들때 필요한 설정파일
- android
  android앱을 만들때 필요한 설정파일
- linux
  리눅스 앱을 만들때 필요한 설정파일
- macos
  macos앱을 만들때 필요한 설정파일
- web
  web앱을 만들때 필요한 설정파일
- windows
  windows앱을 만들때 필요한 설정파일

# flutter 각종 디바이스에서 실행해보기

- 이때 android studio에서 프로젝트를 한번 열면 지가 알아서 뭔가 설치하고 준비하는데 이 과정을 처리해야 vsc에서도 정상적으로 실행된다.
- 어쨌든 android 앱실행시 android studio에서 한번 프로젝트 열고 실행 한 다음 vsc에서 개발 진행하기.

## lib/main.dart 살펴보기

# main

- flutter에서 기본 시작은 main함수로부터 시작된다.

# widget

- ref: https://docs.flutter.dev/development/ui/widgets-intro

```
void main() {
  // 이와같은 runApp은 widget을 포함 하여야하는데 예컨데 리액트의 component같은거라고 생각하면된다.
  runApp(const MyApp());
}

// widget이되기위해선 flutter sdk에서 제공하는 3개의 core widget중에 하나를 extend해야한다.
// flutter sdk에서 제공하는 3개의 core widget중 하나인 StatelessWidget를 상속받으면 build라는 메소드를 구현해야한다.
// build메소드는 무엇을 return하는가에 따라 화면에 어떤 widget이 보여질지 결정된다.
```

# vsc - settings.json

```
- 저장시 문법을 자동으로 고쳐줌
 "editor.codeActionsOnSave": {
    "source.fixAll": true
  },

- 코드의 트리를 시각화 해서 보여줌(현재 코드의 부모가 무엇있지등.. 가이드라인이 생김)
"dart.previewFlutterUiGuides": true,
```

# 파일 스니펫

- 파일 생성후 st라고 입력하면 statelessWidget을 상속받는 위젯의 기본폼을 자동생성 해준다.

# Reusable Widget

- 아래와같이 위젯을 구성하고 재사용할 수 있다(react의 component처럼 재사용 가능하다)

```
import 'package:flutter/material.dart'
    show
        BorderRadius,
        BoxDecoration,
        BuildContext,
        Color,
        Container,
        EdgeInsets,
        Padding,
        StatelessWidget,
        Text,
        TextStyle,
        Widget;

class Button extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;

  const Button({
    super.key,
    required this.text,
    required this.bgColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 50,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

```

# StatelessWidget, StatefullWidget

- StatelessWidget: 상태가 없는 위젯
- StatefullWidget: 상태가 있고 변화에 따라 자동으로 리렌더링됨(마치 리액트)
