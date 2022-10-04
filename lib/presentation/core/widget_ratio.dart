import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

@injectable
class WidgetRatio {
  static const double _MOBILE_WIDTH = 450;

  static double _screenHeight;
  static double _screenWidth;

  static double _blockHeight;
  static double _blockWidth;

  static bool isPotratit = true;
  static bool isMobile = true;

  static double textMultiplier;
  static double heightMultiplier;
  static double widthMultiplier;

  void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      _screenHeight = constraints.maxHeight;
      _screenWidth = constraints.maxWidth;

      isPotratit = true;
      isMobile = (_screenWidth < _MOBILE_WIDTH) ? true : false;
    } else {
      _screenHeight = constraints.maxWidth;
      _screenWidth = constraints.maxHeight;

      isPotratit = false;
      isMobile = (_screenHeight < _MOBILE_WIDTH) ? true : false;
    }

    _blockHeight = _screenHeight / 100;
    _blockWidth = _screenWidth / 100;

    textMultiplier = _blockHeight;
    heightMultiplier = _blockHeight;
    widthMultiplier = _blockWidth;
  }
}
