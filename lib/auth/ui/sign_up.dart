import 'package:aula_dois/app/ds/components/%20cwb_buttons.dart';
import 'package:aula_dois/app/ds/values/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sign Up'),
        ),
        body: Center(
          child: CwbPrimaryButton(
              label: "login",
              onPressed: () {
                Get.offAndToNamed(Routes.login);
              }),
        ));
  }
}
