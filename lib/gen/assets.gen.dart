// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Agency Fb Bold.ttf
  String get agencyFbBold => 'assets/fonts/Agency Fb Bold.ttf';

  /// File path: assets/fonts/Agency-Fb-Regular.ttf
  String get agencyFbRegular => 'assets/fonts/Agency-Fb-Regular.ttf';

  /// File path: assets/fonts/BebasNeue-Regular.ttf
  String get bebasNeueRegular => 'assets/fonts/BebasNeue-Regular.ttf';

  /// File path: assets/fonts/SmoochSans-Black.ttf
  String get smoochSansBlack => 'assets/fonts/SmoochSans-Black.ttf';

  /// File path: assets/fonts/SmoochSans-Bold.ttf
  String get smoochSansBold => 'assets/fonts/SmoochSans-Bold.ttf';

  /// File path: assets/fonts/SmoochSans-ExtraBold.ttf
  String get smoochSansExtraBold => 'assets/fonts/SmoochSans-ExtraBold.ttf';

  /// File path: assets/fonts/SmoochSans-ExtraLight.ttf
  String get smoochSansExtraLight => 'assets/fonts/SmoochSans-ExtraLight.ttf';

  /// File path: assets/fonts/SmoochSans-Light.ttf
  String get smoochSansLight => 'assets/fonts/SmoochSans-Light.ttf';

  /// File path: assets/fonts/SmoochSans-Medium.ttf
  String get smoochSansMedium => 'assets/fonts/SmoochSans-Medium.ttf';

  /// File path: assets/fonts/SmoochSans-Regular.ttf
  String get smoochSansRegular => 'assets/fonts/SmoochSans-Regular.ttf';

  /// File path: assets/fonts/SmoochSans-SemiBold.ttf
  String get smoochSansSemiBold => 'assets/fonts/SmoochSans-SemiBold.ttf';

  /// File path: assets/fonts/SmoochSans-Thin.ttf
  String get smoochSansThin => 'assets/fonts/SmoochSans-Thin.ttf';

  /// List of all assets
  List<String> get values => [
    agencyFbBold,
    agencyFbRegular,
    bebasNeueRegular,
    smoochSansBlack,
    smoochSansBold,
    smoochSansExtraBold,
    smoochSansExtraLight,
    smoochSansLight,
    smoochSansMedium,
    smoochSansRegular,
    smoochSansSemiBold,
    smoochSansThin,
  ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/apple_icon.svg
  String get appleIcon => 'assets/icons/apple_icon.svg';

  /// File path: assets/icons/facebook_icon.svg
  String get facebookIcon => 'assets/icons/facebook_icon.svg';

  /// File path: assets/icons/google_icon.svg
  String get googleIcon => 'assets/icons/google_icon.svg';

  /// File path: assets/icons/x_icon.svg
  String get xIcon => 'assets/icons/x_icon.svg';

  /// List of all assets
  List<String> get values => [appleIcon, facebookIcon, googleIcon, xIcon];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/app_icon_backgoundles.png
  AssetGenImage get appIconBackgoundles =>
      const AssetGenImage('assets/images/app_icon_backgoundles.png');

  /// File path: assets/images/background.jpeg
  AssetGenImage get background =>
      const AssetGenImage('assets/images/background.jpeg');

  /// List of all assets
  List<AssetGenImage> get values => [appIconBackgoundles, background];
}

class Assets {
  const Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
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
