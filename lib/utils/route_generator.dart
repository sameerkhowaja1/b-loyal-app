import 'package:bloyal/utils/app_strings.dart';
import 'package:bloyal/utils/screen_bindings.dart';
import 'package:bloyal/views/views/auth/views/login_screen.dart';
import 'package:bloyal/views/views/home_screen/views/home_screen.dart';
import 'package:bloyal/views/views/splash_screen.dart';
import 'package:get/get.dart';

class RouteGenerator {
  static List<GetPage> getPages() {
    return [
      GetPage(
          name: kSplashRoute,
          page: () => const SplashScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kLoginRoute,
          page: () => LoginScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kHomeRoute,
          page: () => HomeScreen(),
          binding: ScreenBindings()),
    ];
  }
}
