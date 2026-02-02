import 'dart:math';
import 'package:flutter/material.dart';

class Responsive {
  static late MediaQueryData _mediaQueryData;
  static late double _screenWidth;
  static late double _screenHeight;
  static late double _scaleWidth;
  static late double _scaleHeight;
  static late double _scaleText;
  static late double _devicePixelRatio;
  static late bool _isTablet;
  static late DeviceType _deviceType;

  static const double designWidth = 375.0;
  static const double designHeight = 812.0;

  static const double _maxWidthScale = 1.5;
  static const double _maxHeightScale = 1.5;
  static const double _maxTextScale = 1.4;

  static const double _mobileBreakpoint = 600;
  static const double _tabletBreakpoint = 900;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    _screenWidth = _mediaQueryData.size.width;
    _screenHeight = _mediaQueryData.size.height;
    _devicePixelRatio = _mediaQueryData.devicePixelRatio;

    final shortestSide = _mediaQueryData.size.shortestSide;
    _isTablet = shortestSide >= 600;

    if (_screenWidth < _mobileBreakpoint) {
      _deviceType = DeviceType.mobile;
    } else if (_screenWidth < _tabletBreakpoint) {
      _deviceType = DeviceType.tablet;
    } else {
      _deviceType = DeviceType.desktop;
    }

    _scaleWidth = _screenWidth / designWidth;
    _scaleHeight = _screenHeight / designHeight;

    if (_isTablet) {
      _scaleWidth = min(_scaleWidth, _maxWidthScale);
      _scaleHeight = min(_scaleHeight, _maxHeightScale);
    }

    _scaleText = _scaleWidth.clamp(0.85, _maxTextScale);
  }

  static bool get isInitialized => _screenWidth > 0;

  static double get screenWidth => _screenWidth;
  static double get screenHeight => _screenHeight;
  static double get devicePixelRatio => _devicePixelRatio;

  static bool get isTablet => _isTablet;
  static bool get isMobile => !_isTablet;
  static DeviceType get deviceType => _deviceType;

  static double get scaleWidth => _scaleWidth;
  static double get scaleHeight => _scaleHeight;
  static double get scaleText => _scaleText;

  static double w(num width) => width * _scaleWidth;

  static double h(num height) => height * _scaleHeight;

  static double sp(num fontSize) {
    final systemTextScale = _mediaQueryData.textScaler.scale(1);
    final clampedSystemScale = min(systemTextScale, 1.2);
    return fontSize * _scaleText * clampedSystemScale;
  }

  static double spFixed(num fontSize) => fontSize * _scaleText;

  static double r(num radius) => radius * min(_scaleWidth, _scaleHeight);

  static T value<T>({required T mobile, T? tablet, T? desktop}) {
    switch (_deviceType) {
      case DeviceType.desktop:
        return desktop ?? tablet ?? mobile;
      case DeviceType.tablet:
        return tablet ?? mobile;
      case DeviceType.mobile:
        return mobile;
    }
  }

  static double widthPercent(num percent) => _screenWidth * percent / 100;

  static double heightPercent(num percent) => _screenHeight * percent / 100;
}

enum DeviceType { mobile, tablet, desktop }

extension ResponsiveNum on num {
  double get w => Responsive.w(this);
  double get h => Responsive.h(this);
  double get sp => Responsive.sp(this);
  double get spFixed => Responsive.spFixed(this);
  double get r => Responsive.r(this);
  double get wp => Responsive.widthPercent(this);
  double get hp => Responsive.heightPercent(this);
  Widget get verticalSpace => SizedBox(height: Responsive.h(this));
  Widget get horizontalSpace => SizedBox(width: Responsive.w(this));
}

String getRoundOff(String value, {int fractionCount = 2}) {
  try {
    var number = double.tryParse(value);
    return (number?.toStringAsFixed(fractionCount)) ??
        0.toStringAsFixed(fractionCount);
  } catch (e) {
    return 0.toStringAsFixed(fractionCount);
  }
}
