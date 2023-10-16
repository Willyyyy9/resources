import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/app/resources/color_manager.dart';
import 'package:portfolio/app/resources/font_manager.dart';
import 'package:portfolio/app/resources/style_manager.dart';
import 'package:portfolio/app/resources/value_manager.dart';

class AppConstants {
  static void configureLoading() {
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..indicatorType = EasyLoadingIndicatorType.ring
      ..loadingStyle = EasyLoadingStyle.custom
      ..successWidget = Icon(
        FontAwesomeIcons.circleCheck,
        color: ColorManager.success,
        size: AppSize.s45,
      )
      ..errorWidget = Icon(
        FontAwesomeIcons.circleExclamation,
        color: ColorManager.error,
        size: AppSize.s45,
      )
      ..indicatorSize = AppSize.s45
      ..radius = AppSize.s10
      ..progressColor = ColorManager.white
      ..progressWidth = AppSize.s0_5
      ..backgroundColor = ColorManager.black.withOpacity(AppSize.s0_8)
      ..indicatorColor = ColorManager.white
      ..textColor = ColorManager.white
      ..maskColor = ColorManager.black.withOpacity(AppSize.s0_5)
      ..userInteractions = true
      ..fontSize = FontSize.s18
      ..textPadding = const EdgeInsets.symmetric(vertical: AppSize.s28)
      ..textStyle =
          getBoldStyle(color: ColorManager.white, fontSize: FontSize.s16)
      ..dismissOnTap = false;
  }
}
