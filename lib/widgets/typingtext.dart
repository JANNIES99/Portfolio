import 'dart:async';

import 'package:flutter/material.dart';

class TypingText extends StatefulWidget {
  const TypingText(this.text, {this.style, this.textAlign, super.key});

  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;

  @override
  State<TypingText> createState() => _TypingTextState();
}

class _TypingTextState extends State<TypingText> {
  bool isForward = true;
  int index = -1;
  late Timer timer;
  late final int textLength = widget.text.length;
  String onScreenText = "";

  @override
  void initState() {
    timer = Timer.periodic(Duration(milliseconds: 250), (timer) {
      if (isForward) {
        index++;
        if (index > textLength) {
          isForward = false;
          index--;
        }
      } else {
        index--;
        if (index < 0) {
          isForward = true;
          index += 2;
        }
      }
      setState(() {
        onScreenText = "${widget.text.substring(0, index)}_";
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(onScreenText, style: widget.style, textAlign: widget.textAlign);
  }
}
