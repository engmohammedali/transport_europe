import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        child: ListTile(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 9),
          leading: CircleAvatar(
            radius: 30.w,
            backgroundImage: AssetImage(imgUder),
          ),
          title: Column(
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
          trailing: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.delete,
                  color: Colors.red,
                  size: 20.w,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.edit,
                  color: Colors.grey,
                  size: 20.w,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
