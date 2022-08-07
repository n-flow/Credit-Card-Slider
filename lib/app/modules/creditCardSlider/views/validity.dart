import 'package:flutter/material.dart';

class Validity {
  final int validThruMonth;
  final int validThruYear;
  int validFromMonth = 0;
  int validFromYear;

  Validity({
    required this.validThruMonth,
    required this.validThruYear,
    this.validFromMonth = 0,
    this.validFromYear = 0,
  }) {
    assert(validThruMonth != null);
    assert(validThruYear != null);
    if (validFromMonth != null || validFromYear != null) {
      assert(validFromMonth != null);
      assert(validFromYear != null);
    }
  }
}
