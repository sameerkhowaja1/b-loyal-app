import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_images.dart';
import '../../../../utils/app_styles.dart';

class CustomStatCard extends StatelessWidget {
  const CustomStatCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(left: 20.w, right: 20.w, top: 15.h, bottom: 15.h),
      width: Get.width,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(kStatBg), fit: BoxFit.fill)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Stamps Collected',
                style: AppStyles.labelTextStyle().copyWith(
                    fontSize: 12.sp,
                    color: kWhiteColor,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                '45',
                style: AppStyles.labelTextStyle().copyWith(
                    fontSize: 18.sp,
                    color: kWhiteColor,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Container(
            height: 50.h,
            width: 1.5,
            color: kBackgroundColor,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rewards',
                style: AppStyles.labelTextStyle().copyWith(
                    fontSize: 12.sp,
                    color: kWhiteColor,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                '3',
                style: AppStyles.labelTextStyle().copyWith(
                    fontSize: 18.sp,
                    color: kWhiteColor,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
