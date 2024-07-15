import 'package:bloyal/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_styles.dart';
import '../controller/management_controller.dart';

class CustomConfirmationDialog extends StatelessWidget {
  CustomConfirmationDialog(
      {super.key,
      required this.controller,
      required this.message,
      this.isAddingStamp = true});

  final ManagementController controller;
  String message;
  bool isAddingStamp;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: kWhiteColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
      insetPadding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Container(
        width: Get.width,
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Do you Confirm?',
              style: AppStyles.appBarTextStyle().copyWith(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w700,
                  color: kBlackColor),
            ),
            isAddingStamp
                ? Obx(
                    () => Text(
                      message,
                      style: AppStyles.appBarTextStyle().copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: kBlackColor),
                    ),
                  )
                : Text(
                    message,
                    style: AppStyles.appBarTextStyle().copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: kBlackColor),
                  ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    'Cancel',
                    style: AppStyles.appBarTextStyle().copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: kBlackColor),
                  ),
                ),
                TextButton(
                  onPressed: isAddingStamp
                      ? () {
                          Get.toNamed(kCongratsRoute, arguments: {
                            'showMessage':
                                'Stamp(s) have been added successfully !!'
                          });
                        }
                      : () {
                          Get.toNamed(kCongratsRoute, arguments: {
                            'showMessage': 'You redeemed 1 Free Drink!'
                          });
                        },
                  child: Text(
                    'OK',
                    style: AppStyles.appBarTextStyle().copyWith(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w700,
                        color: kBlackColor),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
