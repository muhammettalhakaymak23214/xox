import 'package:flutter/material.dart';

class Renkler {
  Color buttonRengi = Colors.transparent;
  Color metinRengi = Colors.white;
  Color shadowColor = Colors.red;

  Shadow golgeRengi(String metin, double golgeBoyutu) {
    if (metin == "X") {
      return Shadow(color: Colors.red, blurRadius: golgeBoyutu);
    } else {
      return Shadow(color: Colors.green, blurRadius: golgeBoyutu);
    }
  }
}
