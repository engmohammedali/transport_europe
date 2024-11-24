import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transport_europe/core/theming/colors.dart';
import 'package:transport_europe/core/theming/font_weight_helper.dart';

class CardNotifications extends StatelessWidget {
  final String title;
  final String location;
  final String alert;
  final String dataTime;

  const CardNotifications(
      {super.key,
      required this.alert,
      required this.title,
      required this.location,
      required this.dataTime});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.r),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(color: ColorsManager.lightGray, width: 1)),
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 9.r, horizontal: 15.r),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: ColorsManager.btncolor,
                      fontSize: 16.sp,
                      fontWeight: FontWeightHelper.regular,
                      fontFamily: 'appfont',
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    alert,
                    style: TextStyle(
                      color: ColorsManager.lightGray,
                      fontSize: 12.sp,
                      fontWeight: FontWeightHelper.regular,
                      fontFamily: 'appfont',
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    location,
                    style: TextStyle(
                      color: ColorsManager.lightGray,
                      fontSize: 12.sp,
                      fontWeight: FontWeightHelper.regular,
                      fontFamily: 'appfont',
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    dataTime,
                    style: TextStyle(
                      color: ColorsManager.lightGray,
                      fontSize: 12.sp,
                      fontWeight: FontWeightHelper.regular,
                      fontFamily: 'appfont',
                    ),
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("circal");
                        },
                        child: Icon(
                          Icons.circle,
                          color: Colors.black,
                          size: 20.w,
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.delete,
                          color: Colors.red,
                          size: 20.w,
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.check,
                          color: ColorsManager.btncolor,
                          size: 20.w,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
