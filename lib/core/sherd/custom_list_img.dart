import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transport_europe/core/theming/colors.dart';

class CustonListImg extends StatelessWidget {
  final int count;
  const CustonListImg({super.key, this.count = 3});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity.w,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      padding: EdgeInsets.symmetric(vertical: 5.r, horizontal: 16.r),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(count, (int index) {
            if (index == 0) {
              return Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets/images/Rectangle 3565.png',
                      width: 90.r,
                      height: 96.r,
                    ),
                  ),
                  Positioned(
                    top: -20.h,
                    right: -22.h,
                    child: IconButton(
                      onPressed: () {},
                      icon: const CircleAvatar(
                        radius: 9,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.add_circle_outlined,
                          size: 18,
                          color: ColorsManager.btncolor,
                        ),
                      ),
                    ),
                  )
                ],
              );
            } else {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.r),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    'assets/images/Rectangle 3565.png',
                    width: 90.r,
                    height: 96.r,
                  ),
                ),
              );
            }
          }),
        ),
      ),
    );
  }
}
