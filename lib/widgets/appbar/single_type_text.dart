import 'dart:async';

import 'package:flutter/material.dart';

class SingleTypeText extends StatefulWidget {
  const SingleTypeText(
    this.text, {
    super.key,
    this.style,
    this.textAlign,
    this.milliseconds = 50,
  });
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int milliseconds;
  @override
  State<SingleTypeText> createState() => _SingleTypeTextState();
}

class _SingleTypeTextState extends State<SingleTypeText> {
  int textIndex = -1;
  late Timer timer;
  late String text = widget.text;
  late int textLength = widget.text.length;
  String onScreenText = "";
  @override
  void initState() {
    timer = Timer.periodic(Duration(milliseconds: widget.milliseconds), (
      timer,
    ) {
      textIndex++;
      if (textIndex >= textLength) {
        setState(() {
          onScreenText = text.substring(0, textIndex);
        });
        timer.cancel();
      } else {
        setState(() {
          onScreenText = "${text.substring(0, textIndex)}_";
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(onScreenText, style: widget.style, textAlign: widget.textAlign);
  }
}
