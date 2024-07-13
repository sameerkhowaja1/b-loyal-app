import 'dart:ui';

import 'package:flutter/src/painting/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppStyles {
  static TextStyle labelTextStyle() => GoogleFonts.urbanist(
      fontSize: 14.sp, fontWeight: FontWeight.w400, color: kBlackColor);
  static TextStyle appBarTextStyle() => GoogleFonts.urbanist(
      fontSize: 33.sp, fontWeight: FontWeight.w500, color: kBlackColor);
}
