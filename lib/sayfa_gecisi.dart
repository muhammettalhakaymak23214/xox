import 'package:flutter/material.dart';
import 'package:xox/screens/game_over_screen.dart';

import 'screens/xoxGameScreen.dart';

class SayfaGecisleri {
  void sayfagec(int butonId, context, yazi) {
    if (butonId == 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => xoxGameScreen()));
    } else if (butonId == 2) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => GameOverScreen(
                    yazi: yazi,
                  )));
    } else if (butonId == 3) {
    } else if (butonId == 4) {
    } else if (butonId == 5) {}
  }
}
