import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:salvage_shoping_app/res/style/app_styles.dart';

// ignore: must_be_immutable
class SplashScreenPages extends StatelessWidget {
  String bigHeading;
  String smallHeading;
  String onboardingImages;
  SplashScreenPages({
    Key? key,
    required this.bigHeading,
    required this.smallHeading,
    required this.onboardingImages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(onboardingImages),
              ),
              borderRadius: BorderRadius.circular(40.sp),
            ),
            height: 400.h,
          ),
          Text(
            bigHeading,
            style: AppStyles.bigHeading,
          ),
          Text(
            smallHeading,
            style: AppStyles.smallHeading,
          ),
        ],
      ),
    );
  }
}
