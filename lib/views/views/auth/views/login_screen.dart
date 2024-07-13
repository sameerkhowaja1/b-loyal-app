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
import '../controller/auth_controller.dart';

class LoginScreen extends GetView<AuthController> {
  LoginScreen({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40.h,
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  kAppLogo,
                  width: 140.w,
                  height: 140.h,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                'Welcome to Bloyal App!',
                style: AppStyles.appBarTextStyle().copyWith(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w700,
                    color: kBlackColor),
              ),
              Text(
                'Digital Loyalty, Real Rewards.',
                style: AppStyles.appBarTextStyle().copyWith(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700,
                    color: kBlackColor),
              ),
              SizedBox(
                height: 25.h,
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
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormField(
                contentPadding: EdgeInsets.only(
                    left: 16.w, top: 20.h, bottom: 20.h, right: 16.w),
                controller: controller.tecPassword,
                focusNode: controller.fnPassword,
                textInputType: TextInputType.text,
                hintText: 'Enter your Password',
                suffix: Icon(
                  Icons.visibility_outlined,
                  color: kIconColor,
                  size: 22.sp,
                ),
                margin: EdgeInsets.only(top: 2.h, bottom: 15.h),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Password?',
                  style: AppStyles.labelTextStyle().copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: kHintTextColor),
                ),
              ),
              CustomButtonWidget(
                btnLabel: 'Login',
                onTap: () {
                  Get.toNamed(kHomeRoute);
                },
              )
            ],
          ),
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
          ],
        ));
  }
}
