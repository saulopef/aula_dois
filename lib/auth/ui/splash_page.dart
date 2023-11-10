import 'package:aula_dois/auth/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends GetWidget<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(),
            const SizedBox(height: 20),
            const Text("Carregando..."),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () {
              controller.login();
            }, child: Obx(() {
              return Text(controller.isLogged ? "Deslogar" : "Logar");
            })),
            ElevatedButton(
                onPressed: () {
                  controller.goToNextPage();
                },
                child: const Text("ir para a proxima tela"))
          ],
        ),
      ),
    );
  }
}
