import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transport_europe/core/theming/colors.dart';
import 'package:transport_europe/core/theming/font_weight_helper.dart';
import 'package:transport_europe/core/widgets/app_text_button.dart';

class CardCountry extends StatelessWidget {
  final String country;

  final String detaiis;

  const CardCountry({super.key, required this.country, required this.detaiis});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 3.r),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(color: ColorsManager.lightGray, width: 1)),
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 5.r, horizontal: 10.r),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                country,
                style: TextStyle(
                  color: ColorsManager.btncolor,
                  fontSize: 20.sp,
                  fontWeight: FontWeightHelper.regular,
                  fontFamily: 'appfont',
                ),
              ),
              AppTextButton(
                  buttonWidth: 49.w,
                  buttonHeight: 17.h,
                  horizontalPadding: 10,
                  verticalPadding: 4,
                  backgroundColor: ColorsManager.btncolor,
                  buttonText: "التفاصيل",
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 9.sp,
                      fontWeight: FontWeightHelper.regular,
                      fontFamily: 'appfont'),
                  onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
