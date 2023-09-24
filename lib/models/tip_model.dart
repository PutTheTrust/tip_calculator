import 'package:flutter/material.dart';

class TipModel extends ChangeNotifier {
  String text = "";
  double _perPerson = 0;
  double _total = 0;
  final double _tip = 0;
  late String _split = "1";
  double _percentage = 0.1;

  double get perPerson => _perPerson;
  double get total => _total;
  double get tip => _tip;
  String get split => _split;
  double get percentage => _percentage;

  TextEditingController textEditingController = TextEditingController();

  void updateValues() {
    _perPerson = (_total * _percentage) / int.parse(_split);
    _perPerson = double.parse(_perPerson.toStringAsFixed(2));

    notifyListeners();
  }

  void updateText(String newText) {
    if (newText != "") {
      _total = double.parse(newText);
      _total = double.parse(_total.toStringAsFixed(2));
    }
    updateValues();
  }

  void decrementSplit() {
    int tmp = int.parse(_split);
    if (tmp <= 1) {
      _split = "1";
    }

    if (tmp != 1) {
      _split = (tmp -= 1).toString();
    }

    // notifyListeners();
    updateValues();
  }

  void incrementSplit() {
    int tmp = int.parse(_split);

    _split = (tmp += 1).toString();

    // notifyListeners();
    updateValues();
  }

  void updatePercentageSplit(String newPercentage) {
    _percentage = double.parse(newPercentage);
    updateValues();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
}
