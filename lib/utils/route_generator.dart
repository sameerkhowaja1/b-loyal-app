import 'package:bloyal/utils/app_strings.dart';
import 'package:bloyal/utils/screen_bindings.dart';
import 'package:bloyal/views/views/auth/views/login_screen.dart';
import 'package:bloyal/views/views/home_screen/views/all_customers_screen.dart';
import 'package:bloyal/views/views/home_screen/views/home_screen.dart';
import 'package:bloyal/views/views/home_screen/views/updates_screen.dart';
import 'package:bloyal/views/views/management/views/congrates_screen.dart';
import 'package:bloyal/views/views/management/views/management_screen.dart';
import 'package:bloyal/views/views/notification/views/notification_screen.dart';
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
      GetPage(
          name: kAllCustomersRoute,
          page: () => AllCustomersScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kNotificationRoute,
          page: () => const NotificationScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kCongratsRoute,
          page: () => CongratsScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kUpdatesRoute,
          page: () => const UpdatesScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kManagementRoute,
          page: () => const ManagementScreen(),
          binding: ScreenBindings()),
    ];
  }
}
