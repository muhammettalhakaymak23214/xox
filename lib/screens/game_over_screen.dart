import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:xox/sayfa_gecisi.dart';

import '../widget_build/bosluk.dart';
import '../widget_build/renkler.dart';

class GameOverScreen extends StatefulWidget {
  final String yazi;

  const GameOverScreen({super.key, this.yazi: "boş"});

  @override
  State<GameOverScreen> createState() => _GameOverScreenState();
}

class _GameOverScreenState extends State<GameOverScreen> {
  @override
  Widget build(BuildContext context) {
    initState() {
      setState(() {});
    }

    //Button text'ini belirler.
    String textYazisi(buttonAdi) {
      if (buttonAdi == "TekrarOyna") {
        return "Tekrar Oyna";
      } else if (buttonAdi == "oyna") {
        return "OYNA";
      } else {
        return "hata";
      }
    }

    Widget denemebutonu(String buttonAdi, int butonId) {
      return TextButton(
          style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.white),
              shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
                return RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15));
              }),
              side: MaterialStateProperty.resolveWith<BorderSide>(
                  (states) => BorderSide(color: Colors.white, width: 2)),
              backgroundColor:
                  MaterialStateProperty.all<Color>(Renkler().buttonRengi)),
          onPressed: () {
            SayfaGecisleri().sayfagec(butonId, context, "");
          },
          child: Text(
            textYazisi(buttonAdi),
            style: TextStyle(
                color: Renkler().metinRengi,
                shadows: [
                  Shadow(color: Renkler().shadowColor, blurRadius: 3),
                  Shadow(color: Renkler().shadowColor, blurRadius: 6),
                  Shadow(color: Renkler().shadowColor, blurRadius: 9),
                  Shadow(color: Renkler().shadowColor, blurRadius: 12),
                  Shadow(color: Renkler().shadowColor, blurRadius: 15),
                ],
                fontSize: 30),
          ));
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.yazi, style: TextStyle(color: Colors.blue)),
            Bosluk().boslukYukseklik(100.0),
            denemebutonu("TekrarOyna", 1),
          ],
        ),
      ),
    );
  }
}
