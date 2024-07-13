import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';

class CustomButtonWidget extends StatelessWidget {
  final VoidCallback? onTap;
  String btnLabel = "";
  final double marginBottom;
  final double marginTop;
  final double borderRadius;
  final double height;
  final TextStyle? btnLabelStyle;
  CustomButtonWidget({
    required this.btnLabel,
    this.onTap,
    this.marginBottom = 20,
    this.marginTop = 20,
    this.borderRadius = 8.0,
    this.height = 56.0,
    this.btnLabelStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: height.h,
      margin: EdgeInsets.only(
          left: 0.w, right: 0.w, bottom: marginBottom.h, top: marginTop.h),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: ElevatedButton(
        style: const ButtonStyle(
            elevation: WidgetStatePropertyAll(0),
            backgroundColor: WidgetStatePropertyAll(Colors.transparent)),
        onPressed: onTap,
        child: Text(
          btnLabel,
          style: btnLabelStyle ??
              AppStyles.appBarTextStyle().copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 15.sp,
                  color: kWhiteColor),
        ),
      ),
    );
  }
}

class CustomButtonWithIconWidget extends StatelessWidget {
  final VoidCallback? onTap;
  String btnLabel = "";
  final double marginBottom;
  final double marginTop;
  final double borderRadius;
  final double height;
  final TextStyle? btnLabelStyle;
  CustomButtonWithIconWidget({
    required this.btnLabel,
    this.onTap,
    this.marginBottom = 20,
    this.marginTop = 20,
    this.borderRadius = 8.0,
    this.height = 56.0,
    this.btnLabelStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: height.h,
      margin: EdgeInsets.only(
          left: 0.w, right: 0.w, bottom: marginBottom.h, top: marginTop.h),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: ElevatedButton(
        style: const ButtonStyle(
            elevation: WidgetStatePropertyAll(0),
            backgroundColor: WidgetStatePropertyAll(Colors.transparent)),
        onPressed: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              btnLabel,
              style: btnLabelStyle ??
                  AppStyles.appBarTextStyle().copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 15.sp,
                      color: kWhiteColor),
            ),
            SizedBox(
              width: 7.w,
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: kWhiteColor,
              size: 20.sp,
            )
          ],
        ),
      ),
    );
  }
}
