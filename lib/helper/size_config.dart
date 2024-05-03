import 'package:dashboardtest/helper/route_helper.dart';
// Package imports:
import 'package:sized_context/src/extensions.dart';
import 'package:flutter/material.dart';

import '../constant/app_constant.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  late double screenW;
  late double screenH;
  late double blockSizeW;
  late double blockSizeH;

  late double _safeAreaW;
  late double _safeAreaH;
  late double safeBlockW;
  late double safeBlockH;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenW = _mediaQueryData.size.width;
    screenH = _mediaQueryData.size.height;
    blockSizeW = screenW / 100;
    blockSizeH = screenH / 100;

    _safeAreaW = _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaH = _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockW = (screenW - _safeAreaW) / 100;
    safeBlockH = (screenH - _safeAreaH) / 100;
  }

  bool isLowPpi() {
    BuildContext context = currentContext;
    double devicePpi = context.diagonalPx / context.widthInches;
    if (devicePpi < 100)
      return true;
    else
      return false;
  }

  bool isSmall() {
    if (screenW < largeScreenSize)
      return true;
    else
      return false;
  }

  double gridAspectRatio(int crossAxisCount) {
    return crossAxisCount == 1
        ? screenH / (screenH - blockSizeW * 27)
        : (screenW + blockSizeH * 22) / (screenH - blockSizeW * 20);
  }
}
