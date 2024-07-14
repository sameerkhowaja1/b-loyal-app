import 'package:bloyal/utils/app_colors.dart';
import 'package:bloyal/utils/app_images.dart';
import 'package:bloyal/utils/app_styles.dart';
import 'package:bloyal/views/views/home_screen/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../custom_widgets/custom_scaffold.dart';

class AllCustomersScreen extends GetView<HomeController> {
  AllCustomersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      className: runtimeType.toString(),
      screenName: 'Customers',
      leadingWidget: Container(
        margin: EdgeInsets.only(left: 15.w),
        child: Image.asset(
          kBackIcon,
          width: 30.w,
          height: 30.h,
        ),
      ),
      scaffoldKey: controller.scaffoldKeyAllCustomers,
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 10.h),
                padding: EdgeInsets.only(
                    top: 7.h, left: 5.w, bottom: 7.h, right: 10.w),
                decoration: BoxDecoration(
                    color: kWhiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: kBlackColor.withOpacity(0.25),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                      )
                    ],
                    borderRadius: BorderRadius.circular(15.r)),
                child: Row(
                  children: [
                    Image.asset(
                      kProfileIcon,
                      width: 50.w,
                      height: 50.h,
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name',
                                style: AppStyles.appBarTextStyle().copyWith(
                                    fontSize: 14.sp,
                                    color: kBlackColor,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                '10 Dec 21',
                                style: AppStyles.labelTextStyle().copyWith(
                                    fontSize: 12.sp,
                                    color: kBlackColor.withOpacity(0.40),
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '10',
                                style: AppStyles.appBarTextStyle().copyWith(
                                    fontSize: 14.sp,
                                    color: kBlackColor,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                'Stamps',
                                style: AppStyles.labelTextStyle().copyWith(
                                    fontSize: 12.sp,
                                    color: kBlackColor.withOpacity(0.40),
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '1',
                                style: AppStyles.appBarTextStyle().copyWith(
                                    fontSize: 14.sp,
                                    color: kBlackColor,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                'Redeem',
                                style: AppStyles.labelTextStyle().copyWith(
                                    fontSize: 12.sp,
                                    color: kBlackColor.withOpacity(0.40),
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ],
      )),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Text(
              '© 2024 Bloyal All Rights Reserved.',
              style: AppStyles.appBarTextStyle().copyWith(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600,
                  color: kHintTextColor),
            ),
          ),
          SizedBox(
            height: 15.h,
          )
        ],
      ),
    );
  }
}
