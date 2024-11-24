import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transport_europe/core/helpers/space_helper.dart';
import 'package:transport_europe/core/theming/colors.dart';
import 'package:transport_europe/core/theming/font_weight_helper.dart';
import 'package:transport_europe/ui/messages/widgets/card_messafe.dart';

class Messages extends StatelessWidget {
  Messages({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 15.r, vertical: 20.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.r),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "بريد الرسائل",
                    style: TextStyle(
                      fontFamily: 'appfont',
                      fontSize: 27.sp,
                      fontWeight: FontWeightHelper.regular,
                      color: ColorsManager.darkBlue,
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 2,
                color: ColorsManager.lightGray,
              ),
              verticalspace(14),

              Expanded(
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, int index) {
                        return const CardMessafe(
                          alert: "باقي على الارسال 12 يوم",
                          title: "إيطاليا - القطاع الشرقي",
                        );
                      })) // إضافة مسافة بين الحقول
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: ColorsManager.btncolor,
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
