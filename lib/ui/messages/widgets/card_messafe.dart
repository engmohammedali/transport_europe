import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transport_europe/core/theming/colors.dart';
import 'package:transport_europe/core/theming/font_weight_helper.dart';

class CardMessafe extends StatelessWidget {
  final String title;
  final String alert;
  const CardMessafe({super.key, required this.alert, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.r),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(color: ColorsManager.lightGray, width: 1)),
        child: ListTile(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 9),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: ColorsManager.lightGray,
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
                  color: ColorsManager.btncolor,
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
    ;
  }
}
