import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../style/app_styles.dart';
import '../../style/color.dart';
import '../../style/svg.dart';
import '../title_heading.dart';

class DiscountEndsInSection extends StatelessWidget {
  const DiscountEndsInSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                  style:
                      AppStyles.fontSize9.copyWith(color: AppColors.whiteColor),
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
                  style:
                      AppStyles.fontSize9.copyWith(color: AppColors.whiteColor),
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
                  style:
                      AppStyles.fontSize9.copyWith(color: AppColors.whiteColor),
                ),
              ),
            ),
            const Spacer(),
            Text(
              'See all',
              style: AppStyles.fontSize12.copyWith(color: AppColors.blue),
            )
          ],
        ),
        SizedBox(height: 15.h),
        SizedBox(
          height: 170.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) => Container(
              width: 125.w,
              color: AppColors.whiteColor,
              margin: EdgeInsets.only(right: 5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100.h,
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Donatello',
                                  style: AppStyles.fontSize9w400.copyWith(
                                    color: AppColors.blackColor,
                                  ),
                                ),
                                Text(
                                  'Cream elegant',
                                  style: AppStyles.fontSize9w400.copyWith(
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
                          style: AppStyles.fontSize9w400,
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
        ),
        SizedBox(height: 16.h),
      ],
    );
  }
}
