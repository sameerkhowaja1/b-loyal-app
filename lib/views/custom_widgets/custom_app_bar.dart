import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';

class CustomAppBar extends StatelessWidget {
  final String screenTitle;
  final String className;
  final VoidCallback? onBackButtonTap;
  final GlobalKey<ScaffoldState> scaffoldKey;
  final List<Widget> actions;
  final double leadingWidth;
  final Color screenTitleColor;
  final Widget? leadingWidget;
  final Widget? title;
  final bool backIcon;
  final bool? centerTitle;

  const CustomAppBar({
    super.key,
    this.screenTitle = "",
    this.backIcon = true,
    this.className = "",
    this.actions = const [],
    this.onBackButtonTap,
    required this.scaffoldKey,
    this.leadingWidth = 56,
    this.screenTitleColor = kBlackColor,
    this.leadingWidget,
    this.title,
    this.centerTitle,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: actions,
      leadingWidth: leadingWidth,
      leading: leadingWidth > 0
          ? GestureDetector(
              onTap: onBackButtonTap ??
                  () {
                    Get.back();
                  },
              child: leadingWidget ??
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: backIcon
                        ? const Icon(
                            Icons.arrow_back_ios_new,
                            color: kBlackColor,
                          )
                        : SizedBox(
                            width: 0.w,
                            height: 0.w,
                          ),
                  ),
            )
          : Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: leadingWidget ??
                  const SizedBox(
                    width: 0,
                    height: 0,
                  ),
            ),
      title: title ??
          Text(
            screenTitle,
            style: AppStyles.appBarTextStyle().copyWith(
                fontSize: 25.sp,
                fontWeight: FontWeight.w700,
                color: screenTitleColor),
          ),
      centerTitle: centerTitle ?? false,
      foregroundColor: Colors.transparent,
    );
  }
}
