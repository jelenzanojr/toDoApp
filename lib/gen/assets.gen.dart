/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/apklis_logo.svg
  SvgGenImage get apklisLogo =>
      const SvgGenImage('assets/icons/apklis_logo.svg');

  /// File path: assets/icons/edit_role.svg
  SvgGenImage get editRole => const SvgGenImage('assets/icons/edit_role.svg');

  /// File path: assets/icons/menu_about.svg
  SvgGenImage get menuAbout => const SvgGenImage('assets/icons/menu_about.svg');

  /// File path: assets/icons/menu_bill.svg
  SvgGenImage get menuBill => const SvgGenImage('assets/icons/menu_bill.svg');

  /// File path: assets/icons/menu_company.svg
  SvgGenImage get menuCompany =>
      const SvgGenImage('assets/icons/menu_company.svg');

  /// File path: assets/icons/menu_contract.svg
  SvgGenImage get menuContract =>
      const SvgGenImage('assets/icons/menu_contract.svg');

  /// File path: assets/icons/menu_dashboard.svg
  SvgGenImage get menuDashboard =>
      const SvgGenImage('assets/icons/menu_dashboard.svg');

  /// File path: assets/icons/menu_doc.svg
  SvgGenImage get menuDoc => const SvgGenImage('assets/icons/menu_doc.svg');

  /// File path: assets/icons/menu_home.svg
  SvgGenImage get menuHome => const SvgGenImage('assets/icons/menu_home.svg');

  /// File path: assets/icons/menu_log_out.svg
  SvgGenImage get menuLogOut =>
      const SvgGenImage('assets/icons/menu_log_out.svg');

  /// File path: assets/icons/menu_notification.svg
  SvgGenImage get menuNotification =>
      const SvgGenImage('assets/icons/menu_notification.svg');

  /// File path: assets/icons/menu_profile.svg
  SvgGenImage get menuProfile =>
      const SvgGenImage('assets/icons/menu_profile.svg');

  /// File path: assets/icons/menu_setting.svg
  SvgGenImage get menuSetting =>
      const SvgGenImage('assets/icons/menu_setting.svg');

  /// File path: assets/icons/menu_user.svg
  SvgGenImage get menuUser => const SvgGenImage('assets/icons/menu_user.svg');

  /// File path: assets/icons/user_generic.svg
  SvgGenImage get userGeneric =>
      const SvgGenImage('assets/icons/user_generic.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        apklisLogo,
        editRole,
        menuAbout,
        menuBill,
        menuCompany,
        menuContract,
        menuDashboard,
        menuDoc,
        menuHome,
        menuLogOut,
        menuNotification,
        menuProfile,
        menuSetting,
        menuUser,
        userGeneric
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/User Icon.svg
  SvgGenImage get userIcon => const SvgGenImage('assets/images/User Icon.svg');

  /// File path: assets/images/apklis-play-store-cubana.png
  AssetGenImage get apklisPlayStoreCubana =>
      const AssetGenImage('assets/images/apklis-play-store-cubana.png');

  /// File path: assets/images/default_product.png
  AssetGenImage get defaultProduct =>
      const AssetGenImage('assets/images/default_product.png');

  /// File path: assets/images/logo.webp
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.webp');

  /// File path: assets/images/logo2x.png
  AssetGenImage get logo2x => const AssetGenImage('assets/images/logo2x.png');

  /// File path: assets/images/logoca.jpg
  AssetGenImage get logoca => const AssetGenImage('assets/images/logoca.jpg');

  /// File path: assets/images/telegram-logo.png
  AssetGenImage get telegramLogo =>
      const AssetGenImage('assets/images/telegram-logo.png');

  /// File path: assets/images/tm.webp
  AssetGenImage get tm => const AssetGenImage('assets/images/tm.webp');

  /// List of all assets
  List<dynamic> get values => [
        userIcon,
        apklisPlayStoreCubana,
        defaultProduct,
        logo,
        logo2x,
        logoca,
        telegramLogo,
        tm
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
