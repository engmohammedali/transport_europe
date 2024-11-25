import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transport_europe/core/sherd/coustom_img.dart';
import 'package:transport_europe/core/theming/colors.dart';

class ImgUser extends StatelessWidget {
  final String imgUser;
  final double height;
  final double width;
  final IconData? icon;
  final Color? iconColor;
  final void Function()? onTap;
  const ImgUser(
      {super.key,
      this.icon,
      this.iconColor,
      required this.height,
      required this.imgUser,
      required this.onTap,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Stack(
        children: [
          CoustomImg(urlImg: imgUser, height: height.h, width: width.w),
          Positioned(
              top: 5.h,
              right: 5.w,
              child: InkWell(
                onTap: onTap,
                child: Container(
                  alignment: Alignment.center,
                  height: 20.h,
                  width: 20.w,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Icon(
                    icon ?? Icons.edit,
                    size: 15,
                    color: iconColor ?? ColorsManager.lightGray,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
