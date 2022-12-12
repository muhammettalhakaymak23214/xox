import 'package:flutter/material.dart';

import 'screens/xoxGameScreen.dart';

class SayfaGecisleri {
  void sayfagec(int butonId, context) {
    if (butonId == 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => xoxGameScreen()));
    } else if (butonId == 2) {
    } else if (butonId == 3) {
    } else if (butonId == 4) {
    } else if (butonId == 5) {}
  }
}
