import 'package:flutter/material.dart';
import 'package:xox/widget_build/bosluk.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //Renkler:
  Color buttonRengi = Colors.transparent;
  Color metinRengi = Colors.white;
  Color shadowColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    //Ekranı yeniler.
    initState() {
      setState(() {});
    }

    //Button text'ini belirler.
    String textYazisi(buttonAdi) {
      if (buttonAdi == "ayarlar") {
        return "AYARLAR";
      } else if (buttonAdi == "oyna") {
        return "OYNA";
      } else {
        return "hata";
      }
    }

    //Button oluşturmak için kullanılır.
    Widget denemebutonu(String buttonAdi) {
      return TextButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
                return RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15));
              }),
              side: MaterialStateProperty.resolveWith<BorderSide>(
                  (states) => BorderSide(color: Colors.white, width: 2)),
              backgroundColor: MaterialStateProperty.all<Color>(buttonRengi)),
          onPressed: () {
            initState();
          },
          child: Text(
            textYazisi(buttonAdi),
            style: TextStyle(
                color: metinRengi,
                shadows: [
                  Shadow(color: shadowColor, blurRadius: 3),
                  Shadow(color: shadowColor, blurRadius: 6),
                  Shadow(color: shadowColor, blurRadius: 9),
                  Shadow(color: shadowColor, blurRadius: 12),
                  Shadow(color: shadowColor, blurRadius: 15),
                ],
                fontSize: 30),
          ));
    }

    //Düzen kısmı buradır.
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Bosluk().bosluk(100.0),
            denemebutonu("oyna"),
            Bosluk().bosluk(120.0),
            denemebutonu("ayarlar"),
          ],
        ),
      ),
    );
  }
}
