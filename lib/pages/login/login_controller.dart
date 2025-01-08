import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var isLoggedIn = false.obs; // 用于管理登录状态

  TextEditingController unameController = TextEditingController();
  TextEditingController pwdController = TextEditingController();
  bool pwdShow = false;

  // 登录方法
  void login() {
    isLoggedIn.value = true;
    update(); // 强制更新 UI
  }

  // 登出方法
  void logout() {
    isLoggedIn.value = false;
  }

  void pwdShowToggle() {
    pwdShow = !pwdShow;
    update();
  }
}
