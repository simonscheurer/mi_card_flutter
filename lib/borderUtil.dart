import 'package:flutter/material.dart';

class BorderUtil {
  static Widget addBorder(Widget content, {double borderWidth}) {
    borderWidth = borderWidth == null ? 8 : borderWidth;
    return Container(
      child: content,
      margin: EdgeInsets.all(borderWidth),
    );
  }
}
