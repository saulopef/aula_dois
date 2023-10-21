import 'package:aula_dois/auth/bindings/login_binding.dart';
import 'package:aula_dois/auth/bindings/sign_up_binding.dart';
import 'package:aula_dois/auth/ui/login_page.dart';
import 'package:aula_dois/auth/ui/sign_up.dart';
import 'package:get/get.dart';
part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.login,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.cadastro,
      page: () => const SignUpPage(),
      binding: SignUpBinding(),
    ),
  ];
}
