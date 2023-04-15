import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../res/components/title_heading.dart';
import '../res/style/app_styles.dart';
import '../res/style/color.dart';
import '../res/style/svg.dart';

class DiscountSeeAllSection extends StatelessWidget {
  const DiscountSeeAllSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundWhite,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.sp),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(SvgIcons.leftArrow),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      const TitleHeading(title: 'Discount ends in'),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 6.sp),
                        height: 19.h,
                        width: 19.w,
                        color: AppColors.blackColor,
                        child: Center(
                          child: Text(
                            '02',
                            style: AppStyles.fontSize9
                                .copyWith(color: AppColors.whiteColor),
                          ),
                        ),
                      ),
                      SvgPicture.asset(SvgIcons.colon),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 6.sp),
                        height: 19.h,
                        width: 19.w,
                        color: AppColors.blackColor,
                        child: Center(
                          child: Text(
                            '24',
                            style: AppStyles.fontSize9
                                .copyWith(color: AppColors.whiteColor),
                          ),
                        ),
                      ),
                      SvgPicture.asset(SvgIcons.colon),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 6.sp),
                        height: 19.h,
                        width: 19.w,
                        color: AppColors.blackColor,
                        child: Center(
                          child: Text(
                            '09',
                            style: AppStyles.fontSize9
                                .copyWith(color: AppColors.whiteColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: (4 / 6.5).h,
                    ),
                    itemBuilder: (context, index) => Container(
                      color: AppColors.whiteColor,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 190.h,
                            width: double.infinity,
                            child: const Image(
                              image: AssetImage(
                                'assets/images/onboarding1.jpg',
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.sp),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Donatello',
                                          style: AppStyles.fontSize12.copyWith(
                                            color: AppColors.blackColor,
                                          ),
                                        ),
                                        Text(
                                          'Cream elegant',
                                          style: AppStyles.fontSize12.copyWith(
                                            color: AppColors.lightGrey,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SvgPicture.asset(
                                      SvgIcons.unSavedHeart,
                                      height: 15.h,
                                    )
                                  ],
                                ),
                                SizedBox(height: 8.h),
                                Text(
                                  '\$ 398.90',
                                  style: AppStyles.fontSize13w400
                                      .copyWith(color: AppColors.blue),
                                ),
                                Text(
                                  '\$ 402.90',
                                  style: AppStyles.fontSize9w400.copyWith(
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
