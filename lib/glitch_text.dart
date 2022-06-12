library glitch_text;

import 'package:flutter/material.dart';

class GlitchText extends StatelessWidget {
  final String? data;
  final TextAlign? align;
  final TextOverflow overflow;
  final String font;
  final double fontSize;
  final double offset;
  final Color fontColor;
  final double wordSpacing;
  final double letterSpacing;

  const GlitchText(
      {Key? key,
      required this.data,
      this.align,
      required this.overflow,
      required this.font,
      required this.fontSize,
      required this.offset,
      required this.fontColor,
      required this.wordSpacing,
      required this.letterSpacing})
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
