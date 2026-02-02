import 'dart:async';

import 'package:flutter/cupertino.dart';

extension ConvertToDateTime on String {
  DateTime get toDateTime => DateTime.parse(this);
}

extension GetFileName on String {
  //
  String get getFileName {
    return split('/').last;
  }
}

extension CopyWithGradient on LinearGradient {
  LinearGradient copyWith({
    AlignmentGeometry? begin,
    AlignmentGeometry? end,
    List<Color>? colors,
    List<double>? stops,
    TileMode? tileMode,
  }) {
    return LinearGradient(
      begin: begin ?? this.begin,
      end: end ?? this.end,
      colors: colors ?? this.colors,
      stops: stops ?? stops,
      tileMode: tileMode ?? this.tileMode,
    );
  }
}

extension URLValidator on String {
  bool get isUrl {
    if (isEmpty) return false;

    final RegExp urlPattern = RegExp(
      r'^(https?|ftp):\/\/[^\s/$.?#].[^\s]*$',
      caseSensitive: false,
      multiLine: false,
    );

    return urlPattern.hasMatch(this);
  }
}

extension EllipseString on String {
  //
  String ellipse({int length = 20}) {
    if (this.length <= length) {
      return this;
    } else {
      return '${substring(0, length)}...';
    }
  }
}

extension ToDouble on String {
  double get toDouble => double.tryParse(this) ?? 0.0;
}

extension ToRadius on num {
  BorderRadius get toCircular {
    return BorderRadius.circular(toDouble());
  }
}

extension AddRadiusToWidget on Widget {
  Widget addRadius(double radius) {
    return ClipRRect(borderRadius: BorderRadius.circular(radius), child: this);
  }

  Widget get toCircle => ClipOval(child: this);
}

extension ToNumber on String {
  int? get toInt {
    return int.tryParse(this);
  }
}

extension AddLeadingZero on String {
  String get addLeadingZero {
    if (length == 1) {
      return '0$this';
    } else {
      return this;
    }
  }
}

extension AddSpacing on List<Widget> {
  List<Widget> addVSpacing(double spacing) {
    List<Widget> a = [];

    for (final widget in this) {
      a.add(widget);
      a.add(SizedBox(height: spacing));
    }

    return a;
  }

  List<Widget> addVWidget(Widget widget) {
    List<Widget> a = [];

    for (int i = 0; i < length; i++) {
      a.add(this[i]);

      if (i != length - 1) {
        a.add(widget);
      }
    }
    return a;
  }

  //
  List<Widget> addHSpacing(double spacing) {
    List<Widget> a = [];

    for (int i = 0; i < length; i++) {
      a.add(this[i]);

      if (i != length - 1) {
        a.add(SizedBox(width: spacing));
      }
    }

    return a;
  }

  List<Widget> addHWidget(Widget widget) {
    List<Widget> a = [];

    for (int i = 0; i < length; i++) {
      a.add(this[i]);

      if (i != length - 1) {
        a.add(widget);
      }
    }

    return a;
  }
}

List<T> multiSelect<T>({required List<T> list, required T value}) {
  if (list.contains(value)) {
    list.remove(value);
  } else {
    list.add(value);
  }
  return list;
}

extension GetFirstTwoCharacters on String {
  String get getFirstTwoLetter {
    final name = split(' ');
    if (name.length > 1) {
      return '${name.first[0]}${name[1][0]}'.toUpperCase();
    }

    return name.first[0].toUpperCase();
  }
}

extension GetDurationUtils on Duration {
  Future delay([FutureOr Function()? callback]) async =>
      Future.delayed(this, callback);
}

extension StringExtension on String {
  String maskMiddle({int preserveStart = 3, int preserveEnd = 4}) {
    if (length <= preserveStart + preserveEnd) {
      return this;
    }

    return replaceRange(
      preserveStart,
      length - preserveEnd,
      'X' * (length - (preserveStart + preserveEnd)),
    );
  }

  String get getInitials {
    if (isEmpty) return '';

    final List<String> nameParts = trim().split(' ');

    final initials = nameParts
        .where((part) => part.isNotEmpty)
        .map((part) => part[0].toUpperCase())
        .take(2)
        .join('');

    return initials;
  }
}

extension HexColor on String {
  Color get toColor {
    final hexColor = replaceFirst('#', '');
    return Color(int.parse('FF$hexColor', radix: 16));
  }
}


