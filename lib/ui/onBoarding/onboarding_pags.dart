import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transport_europe/ui/onBoarding/widgets/body_onboarding.dart';

class OnboardingPags extends StatefulWidget {
  OnboardingPags({super.key});

  @override
  State<OnboardingPags> createState() => _OnboardingPagsState();
}

class _OnboardingPagsState extends State<OnboardingPags> {
  int curntPage = 0;
  var controllerPage = PageController(initialPage: 0);

  void nextPage(int index) {
    curntPage = index;
    controllerPage.jumpToPage(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Visibility(
              replacement: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "",
                    )
                  ],
                ),
              ),
              visible: curntPage != 2,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        nextPage(2);
                      },
                      child: Text(
                        "تخطي",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'appfont',
                          color: const Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: PageView(
                onPageChanged: (value) {
                  nextPage(value);
                },
                controller: controllerPage,
                children: [
                  BodyOnboarding(
                    onTap: () {
                      nextPage(1);
                    },
                    img: 'assets/images/shipping-amico.png',
                    imgEllipse: 'assets/images/Ellipse 3.png',
                    title: 'اهلا بك في تطبيق Transport Europe',
                    icon: 'assets/images/Arrow left.png',
                  ),
                  BodyOnboarding(
                    onTap: () {
                      nextPage(2);
                    },
                    img: 'assets/images/Logistics-rafiki (1) 1.png',
                    imgEllipse: 'assets/images/Ellipse 4.png',
                    title:
                        'تطبيق Transport Europe تطبيق متخصص يجمع جميع شركات الشحن في اوربا',
                    icon: 'assets/images/Arrow left.png',
                  ),
                  BodyOnboarding(
                    onTap: () {},
                    img: 'assets/images/car3.png',
                    imgEllipse: 'assets/images/Ellipse 5.png',
                    title: 'استمتع بتطبيق متخصص لما تحتاجه',
                    icon: 'assets/images/ابدا.png',
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
