import 'dart:async';

import 'package:flutter/material.dart';

class SEOtext extends StatefulWidget {
  const SEOtext(this.text, {super.key, this.style, this.textAlign});
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;

  @override
  State<SEOtext> createState() => _SEOtextState();
}

class _SEOtextState extends State<SEOtext> {
  int textIndex = -1;
  late Timer timer;
  late String text = widget.text;
  late int textLength = widget.text.length;
  String onScreenText = "";
  @override
  void initState() {
    timer = Timer.periodic(Duration(milliseconds: 50), (timer) {
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
