import 'package:bloyal/utils/app_images.dart';
import 'package:bloyal/utils/app_strings.dart';
import 'package:bloyal/views/custom_widgets/custom_button_widget.dart';
import 'package:bloyal/views/views/home_screen/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../custom_widgets/custom_scaffold.dart';

class ScanQrCodeScreen extends GetView<HomeController> {
  const ScanQrCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        className: runtimeType.toString(),
        screenName: '',
        leadingWidget: Container(
          margin: EdgeInsets.only(left: 15.w),
          child: Image.asset(
            kBackIcon,
            width: 30.w,
            height: 30.h,
          ),
        ),
        scaffoldKey: controller.scaffoldKeyScanQR,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 60.h,
                ),
                Image.asset(
                  kQR,
                  width: 280.w,
                  height: 500.h,
                ),
              ],
            ),
            CustomButtonWidget(
              btnLabel: 'Open',
              onTap: () {
                Get.toNamed(kManagementRoute);
              },
            )
          ],
        ));
  }
}
