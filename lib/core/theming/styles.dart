import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transport_europe/core/theming/colors.dart';
import 'package:transport_europe/core/theming/font_weight_helper.dart';

class TextStyles {
  static TextStyle font14LightGrayRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.lightGray,
  );

  static TextStyle font14DarkBlueMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManager.darkBlue,
  );

  static TextStyle font24BlackRegular = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.regular,
    fontFamily: "appfont",
  );

  static TextStyle font16textbutton = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeightHelper.regular,
    color: Colors.white,
    fontFamily: "appfont",
  );

  static TextStyle font16form = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
    fontFamily: "appfont",
    color: ColorsManager.formgrey,
  );
}
