import 'package:bloyal/utils/app_colors.dart';
import 'package:bloyal/utils/app_images.dart';
import 'package:bloyal/utils/app_strings.dart';
import 'package:bloyal/utils/app_styles.dart';
import 'package:bloyal/views/custom_widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../custom_widgets/custom_scaffold.dart';
import '../../../custom_widgets/custom_text_form_field.dart';
import '../controller/notification_controller.dart';

class NotificationScreen extends GetView<NotificationController> {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      className: runtimeType.toString(),
      screenName: 'Send Notification',
      leadingWidget: Container(
        margin: EdgeInsets.only(left: 15.w),
        child: Image.asset(
          kBackIcon,
          width: 30.w,
          height: 30.h,
        ),
      ),
      scaffoldKey: controller.scaffoldKeyNotification,
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: Text(
              'You can Send Notifications to Your Customers.',
              style: AppStyles.appBarTextStyle().copyWith(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  color: kBlackColor),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomTextFormField(
            contentPadding: EdgeInsets.only(
                left: 16.w, top: 20.h, bottom: 20.h, right: 16.w),
            controller: controller.tecEmail,
            focusNode: controller.fnEmail,
            textInputType: TextInputType.emailAddress,
            hintText: 'Enter your Username',
            margin: EdgeInsets.only(top: 2.h, bottom: 15.h),
          ),
          CustomButtonWidget(
            btnLabel: 'Send',
            onTap: () {
              Get.toNamed(kSuccessRoute);
            },
          ),
          Text(
            'Previous Messages',
            style: AppStyles.appBarTextStyle().copyWith(
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
                color: kHintTextColor),
          ),
          SizedBox(
            height: 7.h,
          ),
          Container(
            width: Get.width,
            height: 400.h,
            decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: kFieldBorderColor)),
            child: Center(
              child: Text(
                'No Previous Messages',
                style: AppStyles.appBarTextStyle().copyWith(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    color: kHintTextColor),
              ),
            ),
          )
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
