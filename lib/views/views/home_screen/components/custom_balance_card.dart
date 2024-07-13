import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_images.dart';
import '../../../../utils/app_styles.dart';

class CustomBalanceCard extends StatelessWidget {
  const CustomBalanceCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding:
              EdgeInsets.only(left: 20.w, right: 20.w, top: 15.h, bottom: 5.h),
          width: Get.width,
          height: 150.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(kBalanceBg), fit: BoxFit.fill)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total Customers',
                style: AppStyles.labelTextStyle().copyWith(
                    fontSize: 16.sp,
                    color: kWhiteColor,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                '102',
                style: AppStyles.labelTextStyle().copyWith(
                    fontSize: 40.sp,
                    color: kWhiteColor,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        Positioned(
          right: 12.w,
          bottom: 8.h,
          child: Image.asset(
            kQRIcon,
            width: 60.w,
            height: 60.h,
          ),
        ),
      ],
    );
  }
}
