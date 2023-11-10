import 'package:aula_dois/app/values/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'BarcodeWiFi',
      getPages: Pages.pages,
      initialRoute: Routes.INITIAL,
    );
  }
}
