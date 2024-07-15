import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_styles.dart';

class CustomCustomerDetailDialog extends StatelessWidget {
  CustomCustomerDetailDialog({
    super.key,
  });

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
              'Customer Details',
              style: AppStyles.appBarTextStyle().copyWith(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w600,
                  color: kBlackColor),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Full Name : Mohamed ALi',
              style: AppStyles.appBarTextStyle().copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: kBlackColor),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Email : asdf@gmail.com',
              style: AppStyles.appBarTextStyle().copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: kBlackColor),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Birthday: 07/07/1998',
              style: AppStyles.appBarTextStyle().copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: kBlackColor),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Last Transaction: 09/08/2024',
              style: AppStyles.appBarTextStyle().copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: kBlackColor),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Number of redeemed drinks : 5',
              style: AppStyles.appBarTextStyle().copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
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
