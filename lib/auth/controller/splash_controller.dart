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
  void onReady() async {
    super.onReady();
    await verifyUser();
    goToNextPage();
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

  Future<bool> verifyUser() async {
    await Future.delayed(const Duration(seconds: 4));
    return true;
  }
}
