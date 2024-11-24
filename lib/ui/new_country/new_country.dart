import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transport_europe/core/theming/colors.dart';
import 'package:transport_europe/core/widgets/app_text_form_feild.dart';

class NewCountry extends StatefulWidget {
  const NewCountry({super.key});

  @override
  State<NewCountry> createState() => _UserProfileState();
}

class _UserProfileState extends State<NewCountry> {
  bool isvisibility = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding:
            EdgeInsetsDirectional.symmetric(horizontal: 15.r, vertical: 20.r),
        child: Center(
          child: Container(
            padding: EdgeInsetsDirectional.symmetric(
                horizontal: 20.r, vertical: 60.r),
            width: double.infinity.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: ColorsManager.lightBlue),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            'assets/images/squar.png',
                            width: 290.r,
                            height: 195.r,
                          ),
                        ),
                        Positioned(
                            top: -20.h,
                            right: -20.h,
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
                                )))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  const Text(
                    softWrap: true,
                    textAlign: TextAlign.center,
                    "اسم الدولة",
                    style: TextStyle(
                        fontSize: 16,
                        color: ColorsManager.lightGray,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins'),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  AppTextFormField(
                    keyboardType: TextInputType.datetime,
                    borderRadius: 16,
                    hintText: 'صربيا',
                    validator: (username) {},
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {
                        // إضافة الوظيفة هنا
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(76, 181, 237, 1)),
                      child: Text(
                        "اضافة",
                        style: TextStyle(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 14.sp,
                            fontFamily: 'appfont',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
