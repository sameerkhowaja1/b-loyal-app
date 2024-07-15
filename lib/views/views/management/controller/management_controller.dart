import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ManagementController extends GetxController {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> scaffoldKeyCongrats = GlobalKey<ScaffoldState>();

  RxInt noOfStamps = 1.obs;

  RxString showMessage = ''.obs;

  @override
  void onInit() {
    // TODO: implement onInit

    if (Get.arguments != null) {
      showMessage.value = Get.arguments['showMessage'];
    } else {
      showMessage.value = 'Your message has been send';
    }
    super.onInit();
  }
}
