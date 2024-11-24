import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transport_europe/core/theming/colors.dart';
import 'package:transport_europe/core/widgets/app_text_form_feild.dart';
import 'package:transport_europe/core/sherd/Custom_title.dart';
import 'package:transport_europe/core/sherd/custom_list_img.dart';


class NewContactMail extends StatelessWidget {
  NewContactMail({super.key});

  bool isvisibility = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding:
            EdgeInsetsDirectional.symmetric(horizontal: 15.r, vertical: 20.r),
        child: Container(
          padding:
              EdgeInsetsDirectional.symmetric(horizontal: 20.r, vertical: 20.r),
          width: double.infinity.w,
          height: double.infinity.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: ColorsManager.lightBlue),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTitle(
                  title: 'اضافة نتيجة رد',
                  icon: Icons.close,
                  onPressed: () {},
                ),
                const Text(
                  softWrap: true,
                  textAlign: TextAlign.center,
                  "الدولة",
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
                  suffixIcon: DropdownButton(
                    icon: const Icon(
                      Icons.navigate_next,
                      color: ColorsManager.gray,
                    ),
                    iconEnabledColor: ColorsManager.lightGray,
                    underline: const SizedBox.shrink(),
                    items: const [
                      DropdownMenuItem(
                        value: 1,
                        child: Text('1'),
                      ),
                      DropdownMenuItem(
                        value: 2,
                        child: Text('2'),
                      ),
                    ],
                    onChanged: (value) {},
                  ),
                  keyboardType: TextInputType.text,
                  borderRadius: 16,
                  hintText: 'اختر الدولة',
                  validator: (username) {},
                ),
                SizedBox(
                  height: 6.h,
                ),
                const Text(
                  softWrap: true,
                  textAlign: TextAlign.center,
                  "القطاع",
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
                  suffixIcon: DropdownButton(
                    icon: const Icon(
                      Icons.navigate_next,
                      color: ColorsManager.gray,
                    ),
                    iconEnabledColor: ColorsManager.lightGray,
                    underline: const SizedBox.shrink(),
                    items: const [
                      DropdownMenuItem(
                        value: 1,
                        child: Text('1'),
                      ),
                      DropdownMenuItem(
                        value: 2,
                        child: Text('2'),
                      ),
                    ],
                    onChanged: (value) {},
                  ),
                  keyboardType: TextInputType.emailAddress,
                  borderRadius: 16,
                  hintText: 'اختر القطاع',
                  validator: (username) {},
                ),
                SizedBox(
                  height: 6.h,
                ),
                const Text(
                  softWrap: true,
                  textAlign: TextAlign.center,
                  "رمز الشركة ",
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
                  suffixIcon: DropdownButton(
                    icon: const Icon(
                      Icons.navigate_next,
                      color: ColorsManager.gray,
                    ),
                    iconEnabledColor: ColorsManager.lightGray,
                    underline: const SizedBox.shrink(),
                    items: const [
                      DropdownMenuItem(
                        value: 1,
                        child: Text('1'),
                      ),
                      DropdownMenuItem(
                        value: 2,
                        child: Text('2'),
                      ),
                    ],
                    onChanged: (value) {},
                  ),
                  keyboardType: TextInputType.datetime,
                  borderRadius: 16,
                  hintText: 'اختر رمز الشركة',
                  validator: (username) {},
                ),
                SizedBox(
                  height: 6.h,
                ),
                const Text(
                  softWrap: true,
                  textAlign: TextAlign.center,
                  "الشركة",
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
                  suffixIcon: DropdownButton(
                    icon: const Icon(
                      Icons.navigate_next,
                      color: ColorsManager.gray,
                    ),
                    iconEnabledColor: ColorsManager.lightGray,
                    underline: const SizedBox.shrink(),
                    items: const [
                      DropdownMenuItem(
                        value: 1,
                        child: Text('1'),
                      ),
                      DropdownMenuItem(
                        value: 2,
                        child: Text('2'),
                      ),
                    ],
                    onChanged: (value) {},
                  ),
                  keyboardType: TextInputType.text,
                  borderRadius: 16,
                  hintText: 'اختر الشركة',
                  validator: (username) {},
                ),
                SizedBox(
                  height: 6.h,
                ),
                const Text(
                  softWrap: true,
                  textAlign: TextAlign.center,
                  "نتيجة الرد",
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
                  suffixIcon: DropdownButton(
                    icon: const Icon(
                      Icons.add,
                      color: ColorsManager.btncolor,
                    ),
                    iconEnabledColor: ColorsManager.lightGray,
                    underline: const SizedBox.shrink(),
                    items: const [
                      DropdownMenuItem(
                        value: 1,
                        child: Text('1'),
                      ),
                      DropdownMenuItem(
                        value: 2,
                        child: Text('2'),
                      ),
                    ],
                    onChanged: (value) {},
                  ),
                  maxLines: 3,
                  keyboardType: TextInputType.text,
                  borderRadius: 16,
                  hintText: 'ادخل نتيجة الرد',
                  validator: (username) {},
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Text(
                  softWrap: true,
                  textAlign: TextAlign.center,
                  "ادراج صور",
                  style: TextStyle(
                      fontSize: 16,
                      color: ColorsManager.lightGray,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins'),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const CustonListImg(),
                SizedBox(
                  height: 10.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      // إضافة الوظيفة هنا
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(76, 181, 237, 1)),
                    child: Text(
                      "اضافة",
                      style: TextStyle(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 14.sp,
                          fontFamily: 'appfont',
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
