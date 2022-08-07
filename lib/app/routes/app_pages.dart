import 'package:get/get.dart';

import '../modules/creditCardSlider/bindings/credit_card_slider_binding.dart';
import '../modules/creditCardSlider/views/credit_card_slider_view.dart';
import '../modules/creditCardView/bindings/credit_card_view_binding.dart';
import '../modules/creditCardView/views/credit_card_view_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CREDIT_CARD_VIEW,
      page: () => CreditCardViewView(),
      binding: CreditCardViewBinding(),
    ),
    GetPage(
      name: _Paths.CREDIT_CARD_SLIDER,
      page: () => CreditCardSliderView(),
      binding: CreditCardSliderBinding(),
    ),
  ];
}
