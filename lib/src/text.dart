import 'package:flutter/material.dart';

class TextFun extends StatelessWidget {
  final String? data;
  final TextAlign align;
  final TextOverflow overflow;
  final String font;
  final double fontSize;
  final Color fontColor;
  final double offset;
  const TextFun(
      {Key? key,
      required this.data,
      required,
      required this.align,
      required this.overflow,
      required this.font,
      required this.fontSize,
      required this.fontColor,
      required this.offset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data!,
      textAlign: align,
      overflow: overflow,
      style: TextStyle(
        fontFamily: font,
        fontSize: fontSize,
        color: fontColor,
        shadows: [
          Shadow(
            color: Colors.red,
            offset: Offset(-offset, -offset),
          ),
          Shadow(
            color: Colors.cyan,
            offset: Offset(offset, offset),
          ),
        ],
      ),
    );
  }
}
