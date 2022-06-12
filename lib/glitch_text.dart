library glitch_text;

import 'package:flutter/material.dart';

///function which returns stateless widget
///text widget with red and cyan shadow
class GlitchText extends StatelessWidget {
  ///String content to be displayed with glitch
  final String? data;

  ///text alignment
  final TextAlign? align;

  ///to control the text overflow
  final TextOverflow overflow;

  ///font family of the font to be used
  ///font family specified after adding it to assets
  final String font;

  /// size of the font
  final double fontSize;

  ///offset will be used for creating shadows in opposite direction
  final double offset;

  ///color of the font
  final Color fontColor;

  ///spacing between words
  final double wordSpacing;

  ///spacing between letters
  final double letterSpacing;

  ///constructor for getting attributes from user
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

        ///default text styling attributes
        style: TextStyle(
          color: fontColor,
          fontFamily: font,
          fontSize: fontSize,
          wordSpacing: wordSpacing,
          letterSpacing: letterSpacing,
          overflow: overflow,

          ///red and cyan shadow with opposite offset
          shadows: [
            ///red shadow with negative offset
            Shadow(
              color: Colors.red,
              offset: Offset(-offset, -offset),
            ),

            ///cyan shadow with positive offset
            Shadow(
              color: Colors.cyan,
              offset: Offset(offset, offset),
            ),
          ],
        ));
  }
}
