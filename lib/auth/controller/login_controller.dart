import 'package:get/get.dart';

import '../../app/ds/values/cwb_spacing.dart';

class LoginController extends GetxController {
  RxBool keepMe = false.obs;
  Rx<CwbSpacing> spacing = CwbSpacing().obs;

  toggleKeepMe(bool) => keepMe.toggle();
}
