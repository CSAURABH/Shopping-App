import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salvage_shoping_app/res/style/app_styles.dart';
import 'package:salvage_shoping_app/res/style/color.dart';

import '../res/style/svg.dart';

class DescriptionScreen extends StatefulWidget {
  const DescriptionScreen({super.key});

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  List<String> item = [
    'assets/images/slider1.jpg',
    'assets/images/slider2.jpg',
    'assets/images/slider3.jpg',
    'assets/images/slider1.jpg',
    'assets/images/slider2.jpg',
    'assets/images/slider3.jpg',
  ];
  ValueNotifier<double> currentPageIndex = ValueNotifier(0.0);
  List<String> psize = ['S', 'M', 'L', 'XL', 'XXL'];
  ValueNotifier<int> selectedIndex = ValueNotifier(0);
  ValueNotifier<int> counter = ValueNotifier(1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey,
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: AppColors.grey,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CarouselSlider(
                    items: item
                        .map(
                          (e) => SizedBox(
                            height: 200.h,
                            child: Image.asset(
                              e,
                              fit: BoxFit.fill,
                            ),
                          ),
                        )
                        .toList(),
                    options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        currentPageIndex.value = double.parse(index.toString());
                      },
                      height: 400.h,
                      aspectRatio: 16 / 9,
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.easeIn,
                      enlargeFactor: 0.1,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  ValueListenableBuilder<double>(
                    valueListenable: currentPageIndex,
                    builder: (context, value, child) => Padding(
                      padding: EdgeInsets.all(25.sp),
                      child: DotsIndicator(
                        dotsCount: item.length,
                        position: value,
                        decorator: DotsDecorator(
                          size: Size.square(8.sp),
                          activeColor: Colors.white,
                          activeSize: const Size(20.0, 6.0),
                          activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.sp),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(25.sp),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: SvgPicture.asset(SvgIcons.leftArrow),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(25.sp),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: SvgPicture.asset(SvgIcons.circularCart),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(25.sp),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: SvgPicture.asset(SvgIcons.circularHeart),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 20.h, left: 10.w, right: 10.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25.r),
                  topLeft: Radius.circular(25.r),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.orange,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Roller Rabbit',
                              style: AppStyles.fontSize20,
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              'Vado Odelle Dress',
                              style: AppStyles.fontSize14
                                  .copyWith(color: AppColors.grey),
                            ),
                          ],
                        ),
                        Container(
                          width: 100.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: AppColors.dividerGrey,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                  if (counter.value > 0) {
                                    counter.value--;
                                  }
                                },
                                child: Icon(
                                  Icons.remove,
                                  size: 18.sp,
                                ),
                              ),
                              ValueListenableBuilder(
                                valueListenable: counter,
                                builder: (context, value, child) => Text(
                                  value.toString(),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  counter.value++;
                                },
                                child: Icon(
                                  Icons.add,
                                  size: 18.sp,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'Size',
                      style: AppStyles.fontSize18,
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      height: 50.h,
                      child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            selectedIndex.value = index;
                          },
                          child: ValueListenableBuilder(
                            valueListenable: selectedIndex,
                            builder: (context, value, child) => Container(
                              margin: EdgeInsets.only(right: 15.w),
                              height: 45.h,
                              width: 45.w,
                              decoration: BoxDecoration(
                                color: value == index
                                    ? AppColors.black
                                    : AppColors.whiteColor,
                                border: Border.all(
                                  color: value == index
                                      ? AppColors.black
                                      : AppColors.grey,
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Text(
                                  psize[index],
                                  style: value == index
                                      ? AppStyles.fontSize14.copyWith(
                                          color: AppColors.whiteColor,
                                        )
                                      : AppStyles.fontSize14.copyWith(
                                          color: AppColors.black,
                                        ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'Description',
                      style: AppStyles.fontSize18,
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "Is there any way to catch a keypress in textfield? In my case, when the user press enter key inside the text field, the values will be stored. For this to happen, I need to use Keypress-event like in Kotlin+Android.",
                      style: AppStyles.fontSize14
                          .copyWith(color: AppColors.lightGrey),
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total Price',
                              style: AppStyles.fontSize10w400,
                            ),
                            Text(
                              '\$256.00',
                              style: AppStyles.fontSize20,
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20.h),
                          height: 45.h,
                          width: 200.w,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.r),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(SvgIcons.cart),
                                SizedBox(width: 10.w),
                                Text(
                                  'Add to cart',
                                  style: AppStyles.fontSize16,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
