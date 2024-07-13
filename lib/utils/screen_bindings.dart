import 'package:bloyal/views/views/auth/controller/auth_controller.dart';
import 'package:bloyal/views/views/home_screen/controller/home_controller.dart';
import 'package:get/get.dart';

class ScreenBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => AuthController());
    Get.lazyPut(() => HomeController());
  }
}
