import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../common_heading_and_see_all_function.dart';

class UpComingPromotionSection extends StatelessWidget {
  const UpComingPromotionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CommonHeadingAndSeeAllFunction(
          title: 'Upcoming promotion',
          onTap: () {},
        ),
        SizedBox(height: 16.h),
        SizedBox(
          height: 75.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) => Container(
              width: 180.w,
              margin: EdgeInsets.only(right: 5.w),
              child: const Image(
                image: AssetImage(
                  'assets/images/slider1.jpg',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        SizedBox(height: 22.h),
      ],
    );
  }
}
