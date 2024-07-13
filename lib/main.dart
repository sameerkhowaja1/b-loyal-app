import 'package:bloyal/utils/app_colors.dart';
import 'package:bloyal/utils/app_strings.dart';
import 'package:bloyal/utils/route_generator.dart';
import 'package:bloyal/utils/screen_bindings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  ThemeData _buildTheme(brightness) {
    var baseTheme = ThemeData(brightness: brightness);
    return baseTheme.copyWith(
      textTheme: GoogleFonts.dmSansTextTheme(baseTheme.textTheme),
      bottomSheetTheme:
          const BottomSheetThemeData(backgroundColor: Colors.transparent),
      scaffoldBackgroundColor: kWhiteColor,
      colorScheme: ThemeData().colorScheme.copyWith(primary: kPrimaryColor),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: GetMaterialApp(
        title: kAppName,
        debugShowCheckedModeBanner: false,
        initialRoute: kSplashRoute,
        theme: _buildTheme(
          Brightness.light,
        ),
        initialBinding: ScreenBindings(),
        getPages: RouteGenerator.getPages(),
        builder: (context, child) {
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                  textScaleFactor:
                      MediaQuery.of(context).textScaleFactor.clamp(1.0, 1.0)),
              child: child!);
        },
      ),
    );
  }
}
