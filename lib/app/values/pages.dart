import 'package:aula_dois/auth/binding/login_binding.dart';
import 'package:aula_dois/auth/binding/sign_up_binding.dart';
import 'package:aula_dois/auth/binding/splash_binding.dart';
import 'package:aula_dois/auth/ui/login_page.dart';
import 'package:aula_dois/auth/ui/sign_up.dart';
import 'package:aula_dois/auth/ui/splash_page.dart';
import 'package:get/get.dart';
part './routes.dart';

abstract class Pages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const SignUpPage(),
      binding: SignUpBinding(),
    )
  ];
}
