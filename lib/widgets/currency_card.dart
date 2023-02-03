import 'package:flutter/material.dart'
    show
        BorderRadius,
        BoxDecoration,
        BuildContext,
        Clip,
        Color,
        Colors,
        Column,
        Container,
        CrossAxisAlignment,
        EdgeInsets,
        FontWeight,
        Icon,
        IconData,
        MainAxisAlignment,
        Offset,
        Padding,
        Row,
        SizedBox,
        StatelessWidget,
        Text,
        TextStyle,
        Transform,
        Widget;

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final double order, basicDY = -20;
  final IconData icon;
  final bool isInverted;
  // 변수이름앞에 _ 로 시작하면 private 변수라고 선언하는것과 같다.
  final Color _blackColor = const Color(0xFF1F2123);

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, order * basicDY),
      child: Container(
        // overflow된 곳(영역을 벗어난 부분)을 제어하는 방법
        // Clip.hardEdge: 위젯 영역을 벗어난 부분을 안보이게 잘라냄
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isInverted ? Colors.white : _blackColor,
          borderRadius: BorderRadius.circular(
            25,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(
            30,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        color: isInverted ? _blackColor : Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: isInverted ? _blackColor : Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                          color: isInverted
                              ? _blackColor
                              : Colors.white.withOpacity(
                                  0.8,
                                ),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // 크기를 제어하는 위젯
              // (이때 부모 위젯에 영향을 미치지 않는다
              // 일반적으로 크기가 커지면 부모위젯의 영역이 강제로 늘어남 하지만 scale은 그냥 overflow시킴)
              Transform.scale(
                scale: 2.2,
                // 위치를 제어하는 위젯
                child: Transform.translate(
                  offset: const Offset(
                    -5,
                    12,
                  ),
                  child: Icon(
                    icon,
                    color: isInverted ? _blackColor : Colors.white,
                    size: 88,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
