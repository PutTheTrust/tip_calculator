import 'package:flutter/material.dart';

class TipModel extends ChangeNotifier {
  final double _perPerson = 0;
  double _total = 1000;
  final double _tip = 0;
  final int _split = 1;

  double get perPerson => _perPerson;
  double get total => _total;
  double get tip => _tip;
  int get split => _split;

  void updateTotals(double bill) {
    if (bill > 0 && _split > 0) {
      _total = bill;
      notifyListeners();
    }
  }
}
