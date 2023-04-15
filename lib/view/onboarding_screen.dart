import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salvage_shoping_app/res/components/onboarding_screen_pages.dart';
import 'package:salvage_shoping_app/res/style/color.dart';
import 'package:salvage_shoping_app/res/style/svg.dart';

// ignore: must_be_immutable
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  ValueNotifier<double> currentIndexPage = ValueNotifier(0.0);
  PageController? controller;
  @override
  void initState() {
    controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List splashBigHeading = [
      '20% Discount \nNew Arrival Product',
      'Take Advantage of The Offer Shopping',
      'All Types Offers Within Your Reach',
    ];
    List splashSmallHeading = [
      'Publish up your selfies to make yourself more beautiful with this app',
      'Publish up your selfies to make yourself more beautiful with this app',
      'Publish up your selfies to make yourself more beautiful with this app',
    ];

    List onboardingImage = [
      'assets/images/onboarding1.jpg',
      'assets/images/onboarding2.jpg',
      'assets/images/onboarding3.jpg',
    ];

    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: PageView.builder(
              physics: const NeverScrollableScrollPhysics(),
              controller: controller,
              onPageChanged: (value) {
                currentIndexPage.value = double.parse(value.toString());
              },
              itemCount: 3,
              itemBuilder: (context, index) => SplashScreenPages(
                bigHeading: splashBigHeading[index],
                smallHeading: splashSmallHeading[index],
                onboardingImages: onboardingImage[index],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ValueListenableBuilder<double>(
                  valueListenable: currentIndexPage,
                  builder: (context, value, child) => DotsIndicator(
                    dotsCount: 3,
                    position: value,
                    decorator: DotsDecorator(
                      size: Size.square(9.sp),
                      activeColor: Colors.black,
                      activeSize: const Size(25.0, 7.0),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.sp),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller!.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.linear,
                    );
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(15.sp),
                      child: SvgPicture.asset(
                        SvgIcons.arrowRight,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
