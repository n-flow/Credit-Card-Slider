import 'package:get/get.dart';

import '../controllers/credit_card_view_controller.dart';

class CreditCardViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreditCardViewController>(
      () => CreditCardViewController(),
    );
  }
}
