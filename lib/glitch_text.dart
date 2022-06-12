library glitch_text;

import 'package:flutter/material.dart';
import 'package:glitch_text/src/font.dart';

class GlitchText extends StatelessWidget {
  final String? data;
  TextAlign? align = TextAlign.center;
  final TextOverflow overflow;
  String font = GlitchFont.hacked();
  final double fontSize;
  final double offset;
  Color? fontColor = Colors.black;
  double? wordSpacing = 1.0;
  double? letterSpacing = 1.0;
  GlitchText(
      {Key? key,
      required this.data,
      this.align,
      required this.overflow,
      required this.font,
      required this.fontSize,
      required this.offset,
      this.fontColor,
      this.wordSpacing,
      this.letterSpacing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(data!,
        textAlign: align,
        style: TextStyle(
          color: fontColor,
          fontFamily: font,
          fontSize: fontSize,
          wordSpacing: wordSpacing,
          letterSpacing: letterSpacing,
          overflow: overflow,
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
        ));
  }
}
