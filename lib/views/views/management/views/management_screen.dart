import 'package:bloyal/utils/app_colors.dart';
import 'package:bloyal/utils/app_images.dart';
import 'package:bloyal/utils/app_styles.dart';
import 'package:bloyal/views/custom_widgets/custom_button_widget.dart';
import 'package:bloyal/views/views/management/components/custom_customer_detail_dialog.dart';
import 'package:bloyal/views/views/management/controller/management_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../custom_widgets/custom_scaffold.dart';
import '../components/custom_confirmation_dialog.dart';

class ManagementScreen extends GetView<ManagementController> {
  const ManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      className: runtimeType.toString(),
      screenName: 'Management',
      leadingWidget: Container(
        margin: EdgeInsets.only(left: 15.w),
        child: Image.asset(
          kBackIcon,
          width: 30.w,
          height: 30.h,
        ),
      ),
      scaffoldKey: controller.scaffoldKey,
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
            width: Get.width,
            decoration: BoxDecoration(
              color: kGreenColor,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'SADDLE',
                          style: AppStyles.appBarTextStyle().copyWith(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w700,
                              color: kWhiteColor),
                        ),
                        Text(
                          'LONDON',
                          style: AppStyles.appBarTextStyle().copyWith(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                              color: kWhiteColor),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Stamps',
                          style: AppStyles.labelTextStyle().copyWith(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w700,
                              color: kWhiteColor),
                        ),
                        Text(
                          '1/6',
                          style: AppStyles.labelTextStyle().copyWith(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                              color: kWhiteColor),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  height: 70.h,
                  child: ListView.builder(
                    itemCount: 6,
                    padding: EdgeInsets.zero,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 15.h),
                        width: 50.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          color: kGreenDarkColor,
                          shape: BoxShape.circle,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'FULL NAME',
                          style: AppStyles.appBarTextStyle().copyWith(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w700,
                              color: kWhiteColor),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'MOHAMED',
                          style: AppStyles.appBarTextStyle().copyWith(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                              color: kWhiteColor),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'FREE DRINK',
                          style: AppStyles.appBarTextStyle().copyWith(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w700,
                              color: kWhiteColor),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          '0',
                          style: AppStyles.appBarTextStyle().copyWith(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                              color: kWhiteColor),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 12.h),
            width: Get.width,
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Center(
              child: Text(
                'Buy 6 , Get 1 Free !',
                style: AppStyles.labelTextStyle()
                    .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          CustomButtonWithIconWidget(
            btnLabel: 'Redeem # Reward',
            marginBottom: 0,
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return CustomConfirmationDialog(
                    controller: controller,
                    message: 'You will Redeem 1 Free Drink',
                    isAddingStamp: false,
                  );
                },
              );
            },
          ),
          CustomButtonWithIconWidget(
            btnLabel: 'Customer Information',
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return CustomCustomerDetailDialog();
                },
              );
            },
          ),
          Container(
            padding: EdgeInsets.only(
                left: 20.w, right: 20.w, top: 35.h, bottom: 10.h),
            width: Get.width,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    if (controller.noOfStamps.value > 0) {
                      controller.noOfStamps--;
                    }
                  },
                  child: Image.asset(
                    kMinusIcon,
                    width: 60.w,
                    height: 55.h,
                  ),
                ),
                Column(
                  children: [
                    Obx(
                      () => Text(
                        '${controller.noOfStamps}',
                        style: AppStyles.appBarTextStyle().copyWith(
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w700,
                            color: kWhiteColor),
                      ),
                    ),
                    Container(
                      width: 50.w,
                      child: Divider(
                        thickness: 1,
                        color: kBackgroundColor,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'Stamp(s)',
                      style: AppStyles.labelTextStyle().copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: kWhiteColor),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    controller.noOfStamps++;
                  },
                  child: Image.asset(
                    kAddIcon,
                    width: 60.w,
                    height: 55.h,
                  ),
                ),
              ],
            ),
          ),
          CustomButtonWidget(
            btnLabel: 'Stamp',
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return CustomConfirmationDialog(
                    controller: controller,
                    message: 'You will add ${controller.noOfStamps} stamps.',
                    isAddingStamp: true,
                  );
                },
              );
            },
          )
        ],
      )),
    );
  }
}
