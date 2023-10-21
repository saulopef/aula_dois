import 'package:aula_dois/app/ds/values/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'BarcodeWiFi6',
      getPages: AppPages.pages,
      initialRoute: Routes.login,
    ),
  );
}
