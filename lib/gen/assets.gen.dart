// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImgGen {
  const $AssetsImgGen();

  /// File path: assets/img/mock_profile_img.png
  AssetGenImage get mockProfileImg =>
      const AssetGenImage('assets/img/mock_profile_img.png');

  /// File path: assets/img/mock_profile_img_2.png
  AssetGenImage get mockProfileImg2 =>
      const AssetGenImage('assets/img/mock_profile_img_2.png');

  /// File path: assets/img/mock_profile_img_3.png
  AssetGenImage get mockProfileImg3 =>
      const AssetGenImage('assets/img/mock_profile_img_3.png');

  /// File path: assets/img/mock_profile_img_4.png
  AssetGenImage get mockProfileImg4 =>
      const AssetGenImage('assets/img/mock_profile_img_4.png');

  /// File path: assets/img/mock_profile_img_5.png
  AssetGenImage get mockProfileImg5 =>
      const AssetGenImage('assets/img/mock_profile_img_5.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    mockProfileImg,
    mockProfileImg2,
    mockProfileImg3,
    mockProfileImg4,
    mockProfileImg5,
  ];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/add_ic.svg
  String get addIc => 'assets/svg/add_ic.svg';

  /// File path: assets/svg/allergies_ic.svg
  String get allergiesIc => 'assets/svg/allergies_ic.svg';

  /// File path: assets/svg/allregies_ic_2.svg
  String get allregiesIc2 => 'assets/svg/allregies_ic_2.svg';

  /// File path: assets/svg/analytics_ic.svg
  String get analyticsIc => 'assets/svg/analytics_ic.svg';

  /// File path: assets/svg/app_logo.svg
  String get appLogo => 'assets/svg/app_logo.svg';

  /// File path: assets/svg/app_logo_2.svg
  String get appLogo2 => 'assets/svg/app_logo_2.svg';

  /// File path: assets/svg/archieve_ic.svg
  String get archieveIc => 'assets/svg/archieve_ic.svg';

  /// File path: assets/svg/book_ic.svg
  String get bookIc => 'assets/svg/book_ic.svg';

  /// File path: assets/svg/cake_ic.svg
  String get cakeIc => 'assets/svg/cake_ic.svg';

  /// File path: assets/svg/car_ic.svg
  String get carIc => 'assets/svg/car_ic.svg';

  /// File path: assets/svg/comment_ic.svg
  String get commentIc => 'assets/svg/comment_ic.svg';

  /// File path: assets/svg/cup_cake_ic.svg
  String get cupCakeIc => 'assets/svg/cup_cake_ic.svg';

  /// File path: assets/svg/events_ic.svg
  String get eventsIc => 'assets/svg/events_ic.svg';

  /// File path: assets/svg/general_note_ic.svg
  String get generalNoteIc => 'assets/svg/general_note_ic.svg';

  /// File path: assets/svg/menu_ic.svg
  String get menuIc => 'assets/svg/menu_ic.svg';

  /// File path: assets/svg/new_order_ic.svg
  String get newOrderIc => 'assets/svg/new_order_ic.svg';

  /// File path: assets/svg/notification_ic.svg
  String get notificationIc => 'assets/svg/notification_ic.svg';

  /// File path: assets/svg/open_ticket_ic.svg
  String get openTicketIc => 'assets/svg/open_ticket_ic.svg';

  /// File path: assets/svg/order_os_ic.svg
  String get orderOsIc => 'assets/svg/order_os_ic.svg';

  /// File path: assets/svg/ring_ic.svg
  String get ringIc => 'assets/svg/ring_ic.svg';

  /// File path: assets/svg/sort_ic.svg
  String get sortIc => 'assets/svg/sort_ic.svg';

  /// File path: assets/svg/special_notes_ic.svg
  String get specialNotesIc => 'assets/svg/special_notes_ic.svg';

  /// File path: assets/svg/spoon_and_fork_ic.svg
  String get spoonAndForkIc => 'assets/svg/spoon_and_fork_ic.svg';

  /// File path: assets/svg/star_ic.svg
  String get starIc => 'assets/svg/star_ic.svg';

  /// File path: assets/svg/swap_acc_ic.svg
  String get swapAccIc => 'assets/svg/swap_acc_ic.svg';

  /// File path: assets/svg/table_ic.svg
  String get tableIc => 'assets/svg/table_ic.svg';

  /// File path: assets/svg/table_ic_2.svg
  String get tableIc2 => 'assets/svg/table_ic_2.svg';

  /// File path: assets/svg/wifi_ic.svg
  String get wifiIc => 'assets/svg/wifi_ic.svg';

  /// List of all assets
  List<String> get values => [
    addIc,
    allergiesIc,
    allregiesIc2,
    analyticsIc,
    appLogo,
    appLogo2,
    archieveIc,
    bookIc,
    cakeIc,
    carIc,
    commentIc,
    cupCakeIc,
    eventsIc,
    generalNoteIc,
    menuIc,
    newOrderIc,
    notificationIc,
    openTicketIc,
    orderOsIc,
    ringIc,
    sortIc,
    specialNotesIc,
    spoonAndForkIc,
    starIc,
    swapAccIc,
    tableIc,
    tableIc2,
    wifiIc,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsImgGen img = $AssetsImgGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
