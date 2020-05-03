library responsive_ui;

import 'package:flutter/material.dart';

class SizeConfig {
  static double _screenWidth;
  static double _screenHeight;
  static double _blockWidth;
  static double _blockHeight;
  static bool _isPortrait;
  static bool _isMobilePortrait;

  static double get textMultiplier => _blockHeight;
  static double get imageSizeMultiplier => _blockWidth;
  static double get widthMultiplier => _blockWidth;
  static double get heightMultiplier => _blockHeight;
  static bool get isPortrait => _isPortrait;
  static bool get isMobilePortrait => _isMobilePortrait;

  void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait)
      setupPortraitOrientation(constraints);
    else if (orientation == Orientation.landscape)
      setupLandscapeOrientation(constraints);

    _blockWidth = _screenWidth / 100;
    _blockHeight = _screenHeight / 100;
    _isMobilePortrait = _screenWidth < 650 ? true : false;
  }

  void setupPortraitOrientation(BoxConstraints constraints) {
    _screenWidth = constraints.maxWidth;
    _screenHeight = constraints.maxHeight;
    _isPortrait = true;
  }

  void setupLandscapeOrientation(BoxConstraints constraints) {
    _screenWidth = constraints.maxHeight;
    _screenHeight = constraints.maxWidth;
    _isPortrait = false;
  }
}
