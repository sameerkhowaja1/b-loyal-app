import 'package:bloyal/utils/app_colors.dart';
import 'package:bloyal/utils/app_images.dart';
import 'package:bloyal/utils/app_strings.dart';
import 'package:bloyal/utils/app_styles.dart';
import 'package:bloyal/views/custom_widgets/custom_button_widget.dart';
import 'package:bloyal/views/views/home_screen/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../custom_widgets/custom_scaffold.dart';
import '../components/custom_balance_card.dart';
import '../components/custom_stat_card.dart';

class HomeScreen extends GetView<HomeController> {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      className: runtimeType.toString(),
      screenName: '',
      leadingWidth: 0,
      isFullBody: true,
      scaffoldKey: controller.scaffoldKey,
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 45.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Business Name',
                style: AppStyles.appBarTextStyle().copyWith(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w800,
                    color: kBlackColor),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(kUpdatesRoute);
                },
                child: Image.asset(
                  kNotificationIcon,
                  width: 28.w,
                  height: 28.h,
                  color: kBlackColor,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomBalanceCard(),
          SizedBox(
            height: 20.h,
          ),
          CustomStatCard(),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Customers',
                style: AppStyles.labelTextStyle().copyWith(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: kBlackColor),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(kAllCustomersRoute);
                },
                child: Text(
                  'See All',
                  style: AppStyles.labelTextStyle().copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: kBlackColor),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          ListView.builder(
            itemCount: 4,
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
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed(kNotificationRoute);
                },
                child: Container(
                  height: 40.h,
                  width: Get.width * 0.43,
                  decoration: BoxDecoration(
                    color: kBlackColor,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Send Notification',
                        style: AppStyles.labelTextStyle().copyWith(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700,
                            color: kWhiteColor),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: kWhiteColor,
                        size: 18.sp,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 40.h,
                width: Get.width * 0.43,
                decoration: BoxDecoration(
                  color: kBlackColor,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Share Link',
                      style: AppStyles.labelTextStyle().copyWith(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                          color: kWhiteColor),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: kWhiteColor,
                      size: 18.sp,
                    )
                  ],
                ),
              )
            ],
          )
        ],
      )),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomButtonWithIconWidget(
            btnLabel: 'Scan QR Code',
            borderRadius: 20.r,
            onTap: () {
              Get.toNamed(kManagementRoute);
            },
          )
        ],
      ),
    );
  }
}
