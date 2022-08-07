import 'package:get/get.dart';

import '../controllers/credit_card_slider_controller.dart';

class CreditCardSliderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreditCardSliderController>(
      () => CreditCardSliderController(),
    );
  }
}
