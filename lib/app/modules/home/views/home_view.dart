import 'package:credit_card_slider/app/routes/app_pages.dart';
import 'package:credit_card_slider/app/routes/routeManager.dart';
import 'package:flutter/material.dart';

import '../../../custom/view/material_button.dart';
import '../../base_get_widget.dart';
import '../controllers/home_controller.dart';

class HomeView extends BaseGetWidget<HomeController> {
  @override
  bool isBackButton() => false;

  @override
  String appBarTitle() => "Home";

  @override
  Widget body(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          getMaterialButton(
              onPressed: () {
                toNamed(Routes.CREDIT_CARD_VIEW);
              },
              text: "Open Credit Card Slider",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              color: Colors.blue),
          getMaterialButton(
              onPressed: () {
                toNamed(Routes.CREDIT_CARD_SLIDER);
              },
              text: "Open Credit Card Slider 1",
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              color: Colors.blue),
        ],
      ),
    );
  }
}