import 'package:flutter/material.dart';

class Styles {
  static TextStyle mainAmountTitle =
      const TextStyle(fontWeight: FontWeight.w900);
  static TextStyle subTitle = const TextStyle(fontWeight: FontWeight.w500);
  static TextStyle subAmount = const TextStyle(
    fontSize: 12,
    color: Color(0xFF01C9BE),
    fontWeight: FontWeight.w900,
  );
  static TextStyle mainAmountSub = const TextStyle(
      fontSize: 16, color: Colors.black, fontWeight: FontWeight.w900);
  static TextStyle mainAmount =
      const TextStyle(color: Colors.black, fontSize: 38);

  static ButtonStyle button = ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF01C9BE)),
    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
    ),
  );
}
