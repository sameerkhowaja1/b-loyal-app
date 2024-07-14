import 'package:bloyal/utils/app_colors.dart';
import 'package:bloyal/utils/app_images.dart';
import 'package:bloyal/utils/app_strings.dart';
import 'package:bloyal/views/custom_widgets/custom_button_widget.dart';
import 'package:bloyal/views/custom_widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/app_styles.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  GlobalKey<ScaffoldState> scaffoldKeySuccess = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      className: runtimeType.toString(),
      scaffoldKey: scaffoldKeySuccess,
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
            kSuccessImage,
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
            child: Text(
              'Your message has been send ',
              style: AppStyles.appBarTextStyle().copyWith(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  color: kHintTextColor),
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
  }
}
