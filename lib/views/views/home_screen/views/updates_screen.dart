import 'package:bloyal/utils/app_colors.dart';
import 'package:bloyal/utils/app_images.dart';
import 'package:bloyal/utils/app_styles.dart';
import 'package:bloyal/views/views/home_screen/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../custom_widgets/custom_scaffold.dart';

class UpdatesScreen extends GetView<HomeController> {
  const UpdatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      className: runtimeType.toString(),
      screenName: 'Updates',
      leadingWidget: Container(
        margin: EdgeInsets.only(left: 15.w),
        child: Image.asset(
          kBackIcon,
          width: 30.w,
          height: 30.h,
        ),
      ),
      scaffoldKey: controller.scaffoldKeyUpdates,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'No System Updates',
              style: AppStyles.labelTextStyle().copyWith(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  color: kHintTextColor),
            ),
          ),
        ],
      ),
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
