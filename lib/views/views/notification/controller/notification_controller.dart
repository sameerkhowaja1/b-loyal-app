import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationController extends GetxController {
  GlobalKey<ScaffoldState> scaffoldKeyNotification = GlobalKey<ScaffoldState>();

  TextEditingController tecEmail = TextEditingController();
  FocusNode fnEmail = FocusNode();
}
