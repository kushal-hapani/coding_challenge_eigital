import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

bool isSmallDevice(BuildContext context) {
  final deviceSize = MediaQuery.of(context).size;
  final isSmallDevice = deviceSize.height < 800;
  return isSmallDevice;
}

bool isSmallTablet(BuildContext context) {
  final deviceSize = MediaQuery.of(context).size;
  final isSmallTablet = deviceSize.width >= 600 && deviceSize.width < 768;
  return isSmallTablet;
}

bool get isIos => kIsWeb ? false : Platform.isIOS;
