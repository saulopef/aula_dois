import 'package:aula_dois/app/values/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  final RxBool _isLogged = false.obs;
  // getter
  bool get isLogged => _isLogged.value;

  @override
  void onInit() {
    super.onInit();
    debugPrint('SplashController onInit');
  }

  @override
  void onReady() {
    super.onReady();
    debugPrint('SplashController onReady');
  }

  @override
  void onClose() {
    super.onClose();
    debugPrint('SplashController onClose');
  }

  void goToNextPage() {
    if (_isLogged.value) {
      Get.offNamed(Routes.HOME);
    } else {
      Get.offNamed(Routes.LOGIN);
    }
  }

  void login() {
    _isLogged.toggle();
  }
}
