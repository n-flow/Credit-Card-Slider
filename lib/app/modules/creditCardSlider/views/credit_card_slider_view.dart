import 'package:credit_card_slider/app/modules/base_get_widget.dart';
import 'package:credit_card_slider/app/modules/creditCardSlider/views/card_background.dart';
import 'package:credit_card_slider/app/modules/creditCardSlider/views/card_company.dart';
import 'package:credit_card_slider/app/modules/creditCardSlider/views/card_network_type.dart';
import 'package:credit_card_slider/app/modules/creditCardSlider/views/credit_card_slider.dart';
import 'package:credit_card_slider/app/modules/creditCardSlider/views/credit_card_widget.dart';
import 'package:credit_card_slider/app/modules/creditCardSlider/views/validity.dart';
import 'package:flutter/material.dart';

import '../controllers/credit_card_slider_controller.dart';

class CreditCardSliderView extends BaseGetWidget<CreditCardSliderController> {
  @override
  Widget body(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            color: kBlue,
            child: Text('Simple card slider',
                style: TextStyle(color: Colors.white)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SimpleCreditCardSlider(),
                ),
              );
            },
          ),
          MaterialButton(
            color: kBlue,
            child: Text('Credit card slider with repeating down cards',
                style: TextStyle(color: Colors.white)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CreditCardSliderRepeatDown(),
                ),
              );
            },
          ),
          MaterialButton(
            color: kBlue,
            padding: EdgeInsets.all(8),
            child: Text(
                'Credit card slider with repeating cards in both direction',
                style: TextStyle(color: Colors.white)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CreditCardSliderRepeatBothSides(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

Color kPink = Color(0xFFEE4CBF);
Color kRed = Color(0xFFFA3754);
Color kBlue = Color(0xFF4AA3F2);
Color kPurple = Color(0xFFAF92FB);

var _creditCards = [
  CreditCard(
    cardBackground: SolidColorCardBackground(Colors.black.withOpacity(0.6)),
    cardNetworkType: CardNetworkType.visaBasic,
    cardHolderName: 'The boring developer',
    cardNumber: '1234 1234 1234 1234',
    company: CardCompany.yesBank,
    validity: Validity(
      validThruMonth: 1,
      validThruYear: 21,
      validFromMonth: 1,
      validFromYear: 16,
    ),
  ),
  CreditCard(
    cardBackground: SolidColorCardBackground(kRed.withOpacity(0.4)),
    cardNetworkType: CardNetworkType.mastercard,
    cardHolderName: 'Gursheesh Singh',
    cardNumber: '2434 2434 **** ****',
    company: CardCompany.kotak,
    validity: Validity(
      validThruMonth: 1,
      validThruYear: 21,
    ),
  ),
  CreditCard(
    cardBackground: GradientCardBackground(LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [kBlue, kPurple],
      stops: [0.3, 0.95],
    )),
    cardNetworkType: CardNetworkType.mastercard,
    cardHolderName: 'Very Very very boring devloper',
    cardNumber: '4567',
    company: CardCompany.sbiCard,
    validity: Validity(
      validThruMonth: 2,
      validThruYear: 2021,
    ),
  ),
  CreditCard(
    cardBackground:
        ImageCardBackground(AssetImage('images/background_sample.jpg')),
    cardNetworkType: CardNetworkType.mastercard,
    cardHolderName: 'John Doe',
    cardNumber: '2434 2434 **** ****',
    company: CardCompany.virgin,
    validity: Validity(
      validThruMonth: 1,
      validThruYear: 20,
    ),
  ),
  CreditCard(
    cardBackground:
        ImageCardBackground(AssetImage('images/background_sample.jpg')),
    cardNetworkType: CardNetworkType.americanExpress,
    cardHolderName: 'John Doe',
    cardNumber: '2434 2434 **** ****',
    company: CardCompany.virgin,
    validity: Validity(
      validThruMonth: 1,
      validThruYear: 20,
    ),
  ),
  CreditCard(
    cardBackground:
        ImageCardBackground(AssetImage('images/background_sample.jpg')),
    cardNetworkType: CardNetworkType.discover,
    cardHolderName: 'John Doe',
    cardNumber: '2434 2434 **** ****',
    company: CardCompany.virgin,
    validity: Validity(
      validThruMonth: 1,
      validThruYear: 20,
    ),
  ),
  CreditCard(
    cardBackground:
        ImageCardBackground(AssetImage('images/background_sample.jpg')),
    cardNetworkType: CardNetworkType.unionPay,
    cardHolderName: 'John Doe',
    cardNumber: '2434 2434 **** ****',
    company: CardCompany.virgin,
    validity: Validity(
      validThruMonth: 1,
      validThruYear: 20,
    ),
  ),
  CreditCard(
    cardNetworkType: CardNetworkType.rupay,
    cardHolderName: 'THE BORING DEVELOPER',
    cardNumber: '2434 2434 **** ****',
    company: CardCompany.sbi,
    cardBackground:
        ImageCardBackground(AssetImage('images/background_sample.jpg')),
    validity: null,
  ),
];

class SimpleCreditCardSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CreditCardSlider(
          _creditCards,
          initialCard: 2,
          onCardClicked: (index) {
            print('Clicked at index: $index');
          },
        ),
      ),
    );
  }
}

class CreditCardSliderRepeatDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CreditCardSlider(_creditCards, repeatCards: RepeatCards.down,
            onCardClicked: (index) {
          print('Clicked at index: $index');
        }),
      ),
    );
  }
}

class CreditCardSliderRepeatBothSides extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CreditCardSlider(_creditCards,
            repeatCards: RepeatCards.bothDirection, onCardClicked: (index) {
          print('Clicked at index: $index');
        }),
      ),
    );
  }
}
