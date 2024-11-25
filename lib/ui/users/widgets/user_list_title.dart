import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transport_europe/core/sherd/coustom_img.dart';
import 'package:transport_europe/core/theming/colors.dart';
import 'package:transport_europe/core/theming/font_weight_helper.dart';

class UserListTitle extends StatelessWidget {
  final String username;
  final String email;
  final String imgUder;
  final String phon;

  const UserListTitle(
      {super.key,
      required this.email,
      required this.imgUder,
      required this.phon,
      required this.username});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.r),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(color: ColorsManager.lightGray, width: 1)),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 9.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CoustomImg(
                    urlImg: imgUder,
                    height: 60.h,
                    width: 60.w,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        username,
                        style: TextStyle(
                          color: ColorsManager.btncolor,
                          fontSize: 16.sp,
                          fontWeight: FontWeightHelper.regular,
                          fontFamily: 'appfont',
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      // إضافة مساحة بين النصوص
                      Text(
                        email,
                        style: TextStyle(
                          color: ColorsManager.gray,
                          fontSize: 12.sp,
                          fontWeight: FontWeightHelper.regular,
                          fontFamily: 'appfont',
                        ),
                      ),
                      // إضافة مساحة بين النصوص
                      Text(
                        phon,
                        style: TextStyle(
                          color: ColorsManager.gray,
                          fontSize: 12.sp,
                          fontWeight: FontWeightHelper.regular,
                          fontFamily: 'appfont',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.delete,
                      size: 15,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.edit,
                      color: Colors.grey,
                      size: 15,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
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
