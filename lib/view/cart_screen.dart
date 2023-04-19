import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salvage_shoping_app/res/style/svg.dart';

import '../res/style/app_styles.dart';
import '../res/style/color.dart';

const List<String> list = <String>['S', 'M', 'L', 'XL', 'XXL'];
const List<String> count = <String>[
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
  '9',
  '10'
];

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  String dropdownValue = list.first;
  String dropdownValueCount = count.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0.0,
        title: Text(
          'My Bag',
          style: AppStyles.fontSize18.copyWith(
            color: AppColors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 420.h,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => SizedBox(
                  height: 120.h,
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(12.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 85.h,
                            width: 98.w,
                            child: Image.asset(
                              'assets/images/onboarding1.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Donatello',
                                          style: AppStyles.fontSize13w400,
                                        ),
                                        Text(
                                          'Cream elegant',
                                          style: AppStyles.fontSize12w400,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              'Size',
                                              style: AppStyles.fontSize12w400,
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 5.sp,
                                              ),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: AppColors.black,
                                                  style: BorderStyle.solid,
                                                  width: 0.5,
                                                ),
                                              ),
                                              height: 20.h,
                                              width: 40.w,
                                              child: DropdownButton<String>(
                                                value: dropdownValue,
                                                iconSize: 10.h,
                                                style: AppStyles.fontSize9w400
                                                    .copyWith(
                                                  color: AppColors.black,
                                                ),
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    dropdownValue = value!;
                                                  });
                                                },
                                                underline: const SizedBox(),
                                                items: list.map<
                                                        DropdownMenuItem<
                                                            String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: value,
                                                    child: Text(value),
                                                  );
                                                }).toList(),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 15.w),
                                        Column(
                                          children: [
                                            Text(
                                              'Quantity',
                                              style: AppStyles.fontSize12w400,
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 5.sp,
                                              ),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: AppColors.black,
                                                  style: BorderStyle.solid,
                                                  width: 0.5,
                                                ),
                                              ),
                                              height: 20.h,
                                              width: 40.w,
                                              child: DropdownButton<String>(
                                                value: dropdownValueCount,
                                                iconSize: 10.h,
                                                style: AppStyles.fontSize9w400
                                                    .copyWith(
                                                  color: AppColors.black,
                                                ),
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    dropdownValueCount = value!;
                                                  });
                                                },
                                                underline: const SizedBox(),
                                                items: count.map<
                                                        DropdownMenuItem<
                                                            String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: value,
                                                    child: Text(value),
                                                  );
                                                }).toList(),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '\$ 398.90',
                                          style: AppStyles.fontSize12w400,
                                        ),
                                        Text(
                                          '\$ 402.00',
                                          style: AppStyles.fontSize9w400,
                                        ),
                                      ],
                                    ),
                                    SvgPicture.asset(
                                      SvgIcons.remove,
                                      height: 20.h,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.all(8.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total (4 item) :',
                    style: AppStyles.fontSize14.copyWith(
                      color: AppColors.icongrey,
                    ),
                  ),
                  Text(
                    '\$ 797.8',
                    style: AppStyles.fontSize18,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20.h),
              height: 48.h,
              width: 343.w,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.black,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Proceed to Checkout',
                      style: AppStyles.fontSize16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10.r),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10.sp),
                        child: SvgPicture.asset(
                          SvgIcons.arrowRight,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
