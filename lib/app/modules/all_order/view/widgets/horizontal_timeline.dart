import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/core/constants/color_const.dart';

class HorizontalTimeLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 15,
        ),
        _CustomCirlcle(x: true),
        _CustomLine(width: 85),
        _CustomCirlcle(x: true),
        _CustomLine(width: 85),
        _CustomCirlcle(x: true),
        _CustomLine(width: 90),
        _CustomCirlcle(x: false),
      ],
    );
  }
}

class _CustomLine extends StatelessWidget {
  const _CustomLine({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 1,
      color: bordercolor,
    );
  }
}

class _CustomCirlcle extends StatelessWidget {
  const _CustomCirlcle({
    Key? key,
    required this.x,
  }) : super(key: key);

  final bool x;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7,
      width: 7,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: bordercolor),
        color: x ? kgreen : kwhite,
      ),
    );
  }
}
