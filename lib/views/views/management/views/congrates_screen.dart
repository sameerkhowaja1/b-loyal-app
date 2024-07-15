import 'package:bloyal/views/views/management/controller/management_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_images.dart';
import '../../../../utils/app_strings.dart';
import '../../../../utils/app_styles.dart';
import '../../../custom_widgets/custom_button_widget.dart';
import '../../../custom_widgets/custom_scaffold.dart';

class CongratsScreen extends GetView<ManagementController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetBuilder<ManagementController>(initState: (_) {
      Get.put(ManagementController());
      controller.onInit();
    }, builder: (c) {
      return CustomScaffold(
        className: runtimeType.toString(),
        scaffoldKey: controller.scaffoldKeyCongrats,
        screenName: '',
        isFullBody: true,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Image.asset(
              controller.showMessage.value == 'You redeemed 1 Free Drink!'
                  ? kRedeemImage
                  : kSuccessImage,
              width: 300.w,
              height: 300.h,
            ),
            Center(
              child: Text(
                'Congrats!',
                style: AppStyles.appBarTextStyle().copyWith(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w700,
                    color: kBlackColor),
              ),
            ),
            Center(
              child: Obx(
                () => Text(
                  controller.showMessage.value,
                  style: AppStyles.appBarTextStyle().copyWith(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      color: kHintTextColor),
                ),
              ),
            ),
            CustomButtonWidget(
              btnLabel: 'Close',
              onTap: () {
                Get.offAndToNamed(kHomeRoute);
              },
            )
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
    });
  }
}
