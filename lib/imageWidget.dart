import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mi_card/borderUtil.dart';

class ImageWidget extends StatelessWidget {
  double _borderWidth;
  String _asset;

  ImageWidget(asset, {double borderWidth}) {
    _asset = asset;
    _borderWidth = borderWidth;
  }

  @override
  Widget build(BuildContext context) {
    var image = AssetImage('images/' + _asset);
    // Without the "Expanded", the image will be too big.
    // I.e. there is no constraint. The Expanded though
    // "informs" the image to consume all 'available'
    // width which leads the image to resize.
    return Expanded(
      child: BorderUtil.addBorder(
        Image(image: image),
        borderWidth: _borderWidth,
      ),
    );
  }
}
