import 'package:flutter/material.dart';
import 'package:whatsapp/common/utils/coloors.dart';

extension CustomThemedTheme on BuildContext {
  CustomThemeExtension get theme {
    return Theme.of(this).extension<CustomThemeExtension>()!;
  }
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  static CustomThemeExtension lightMdoe = CustomThemeExtension(
    circleImageColor: Color(0xFF25D366),
    greyColor: Coloors.greyLight,
    bludColor: Coloors.blueLight,
    LangBtnBgColor: Colors.white,
    LangBtnHighlightColor: Color(0xFFE8E8ED),
    authAppBarTextColor: Coloors.greenLight,
  );

  static CustomThemeExtension darkMdoe = CustomThemeExtension(
    circleImageColor: Coloors.greenDark,
    greyColor: Coloors.greyDark,
    bludColor: Coloors.blueDark,
    LangBtnBgColor: Color(0xFF182229),
    LangBtnHighlightColor: Color(0xFF09141A),
    authAppBarTextColor: Color(0xFFE9EDEF),
  );
  final Color? circleImageColor;
  final Color? greyColor;
  final Color? bludColor;
  final Color? LangBtnBgColor;
  final Color? LangBtnHighlightColor;
  final Color? authAppBarTextColor;

  CustomThemeExtension({
    this.circleImageColor,
    this.greyColor,
    this.bludColor,
    this.LangBtnBgColor,
    this.LangBtnHighlightColor,
    this.authAppBarTextColor,
  });
  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? circleImageColor,
    Color? greyColor,
    Color? bludColor,
    Color? LangBtnBgColor,
    Color? LangBtnHighlightColor,
  }) {
    return CustomThemeExtension(
      circleImageColor: circleImageColor ?? this.circleImageColor,
      greyColor: greyColor ?? this.greyColor,
      bludColor: bludColor ?? this.bludColor,
      LangBtnBgColor: LangBtnBgColor ?? this.LangBtnBgColor,
      authAppBarTextColor: authAppBarTextColor ?? this.authAppBarTextColor,
      LangBtnHighlightColor:
          LangBtnHighlightColor ?? this.LangBtnHighlightColor,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      circleImageColor: Color.lerp(circleImageColor, other.circleImageColor, t),
      greyColor: Color.lerp(greyColor, other.greyColor, t),
      bludColor: Color.lerp(bludColor, other.bludColor, t),
      LangBtnBgColor: Color.lerp(LangBtnBgColor, other.LangBtnBgColor, t),
      authAppBarTextColor:
          Color.lerp(authAppBarTextColor, other.authAppBarTextColor, t),
      LangBtnHighlightColor:
          Color.lerp(LangBtnHighlightColor, other.LangBtnHighlightColor, t),
    );
  }
}
