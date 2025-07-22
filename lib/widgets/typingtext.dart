import 'dart:async';

import 'package:flutter/material.dart';

class TypingText extends StatefulWidget {
  const TypingText(this.listOfText, {this.style, this.textAlign, super.key});

  final List<String> listOfText;
  final TextStyle? style;
  final TextAlign? textAlign;

  @override
  State<TypingText> createState() => _TypingTextState();
}

class _TypingTextState extends State<TypingText> {
  bool isForward = true;
  int textIndex = -1;
  int listIndex = 0;
  late Timer timer;
  late String text;
  late int textLength;
  late int listLength = widget.listOfText.length;
  String onScreenText = "";

  @override
  void initState() {
    text = widget.listOfText[listIndex];
    textLength = text.length;
    timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
      if (isForward) {
        textIndex++;
        if (textIndex > textLength) {
          isForward = false;
          textIndex--;
        }
      } else {
        textIndex--;
        if (textIndex < 0) {
          isForward = true;
          listIndex = (listIndex + 1) % listLength;
          text = widget.listOfText[listIndex];
          textIndex += 2;
        }
      }
      setState(() {
        onScreenText = "${text.substring(0, textIndex)}_";
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(onScreenText, style: widget.style, textAlign: widget.textAlign);
  }
}
