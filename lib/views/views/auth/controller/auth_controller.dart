import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController tecEmail = TextEditingController(),
      tecPassword = TextEditingController();
  FocusNode fnEmail = FocusNode(), fnPassword = FocusNode();
}
