import 'package:flutter/material.dart';

class BigIconWidget extends StatelessWidget {
  double _size;
  IconData _icon;

  BigIconWidget(IconData icon, {double size}) {
    _icon = icon;
    _size = size == null ? 40 : size;
  }

  @override
  Widget build(BuildContext context) {
    return Icon(
      _icon,
      size: _size,
      color: Colors.blueGrey,
    );
  }
}
