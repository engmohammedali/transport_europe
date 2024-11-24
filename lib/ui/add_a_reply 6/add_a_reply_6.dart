import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transport_europe/core/sherd/Custom_title.dart';
import 'package:transport_europe/core/sherd/custom_list_img.dart';
import 'package:transport_europe/core/theming/colors.dart';
import 'package:transport_europe/core/widgets/app_text_form_feild.dart';

class AddAReply6 extends StatelessWidget {
  const AddAReply6({super.key});

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
                  title: 'اضافة مشترى',
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
                  "اسم الشركة",
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
                  keyboardType: TextInputType.text,
                  borderRadius: 16,
                  hintText: 'ادخل اسم الشركة',
                  validator: (username) {},
                ),
                SizedBox(
                  height: 6.h,
                ),
                const Text(
                  softWrap: true,
                  textAlign: TextAlign.center,
                  "اسم السيارة",
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
                  keyboardType: TextInputType.text,
                  borderRadius: 16,
                  hintText: 'ادخل اسم السيارة',
                  validator: (username) {},
                ),
                SizedBox(
                  height: 6.h,
                ),
                const Text(
                  softWrap: true,
                  textAlign: TextAlign.center,
                  "سنة الصنع",
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
                  keyboardType: TextInputType.text,
                  borderRadius: 16,
                  hintText: 'ادخل سنة الصنع',
                  validator: (username) {},
                ),
                SizedBox(
                  height: 6.h,
                ),
                const Text(
                  softWrap: true,
                  textAlign: TextAlign.center,
                  "عدد الاحصنة",
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
                  keyboardType: TextInputType.text,
                  borderRadius: 16,
                  hintText: 'ادخل عدد الاحصنة',
                  validator: (username) {},
                ),
                SizedBox(
                  height: 6.h,
                ),
                const Text(
                  softWrap: true,
                  textAlign: TextAlign.center,
                  "المسافة المقطوعة",
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
                  keyboardType: TextInputType.text,
                  borderRadius: 16,
                  hintText: 'ادخل المسافة المقطوعة',
                  validator: (username) {},
                ),
                SizedBox(
                  height: 6.h,
                ),
                const Text(
                  softWrap: true,
                  textAlign: TextAlign.center,
                  "تاريخ الشراء",
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
                  suffixIcon: const Icon(Icons.calendar_month),
                  keyboardType: TextInputType.text,
                  borderRadius: 16,
                  hintText: '27/11/2024',
                  validator: (username) {},
                ),
                SizedBox(
                  height: 6.h,
                ),
                const Text(
                  softWrap: true,
                  textAlign: TextAlign.center,
                  "الاعطال",
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
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: ColorsManager.btncolor,
                    ),
                    color: ColorsManager.gray,
                  ),
                  keyboardType: TextInputType.text,
                  borderRadius: 16,
                  hintText: 'ادخل اعطال السيارة',
                  validator: (username) {},
                ),
                SizedBox(
                  height: 6.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          softWrap: true,
                          textAlign: TextAlign.center,
                          "اللون",
                          style: TextStyle(
                              fontSize: 16,
                              color: ColorsManager.lightGray,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins'),
                        ),
                        SizedBox(
                          width: 160.w,
                          child: AppTextFormField(
                            keyboardType: TextInputType.text,
                            borderRadius: 16,
                            hintText: 'ادخل لون السيارة',
                            validator: (username) {},
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          softWrap: true,
                          textAlign: TextAlign.center,
                          "السعر",
                          style: TextStyle(
                              fontSize: 16,
                              color: ColorsManager.lightGray,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins'),
                        ),
                        SizedBox(
                          width: 160.w,
                          child: AppTextFormField(
                            keyboardType: TextInputType.text,
                            borderRadius: 16,
                            hintText: 'ادخل سعر السيارة',
                            validator: (username) {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 6.h,
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
                const CustonListImg(
                  count: 4,
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Text(
                  softWrap: true,
                  textAlign: TextAlign.center,
                  "ملاحظات",
                  style: TextStyle(
                      fontSize: 16,
                      color: ColorsManager.lightGray,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins'),
                ),
                SizedBox(
                  height: 10.h,
                ),
                AppTextFormField(
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: ColorsManager.btncolor,
                    ),
                    color: ColorsManager.gray,
                  ),
                  keyboardType: TextInputType.text,
                  borderRadius: 16,
                  hintText: 'ادخل ملاحظاتك',
                  validator: (username) {},
                ),
                SizedBox(
                  height: 20.h,
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
