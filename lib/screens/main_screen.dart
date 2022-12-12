import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String deneme = "a";
  int secim = 0;

  //Renkler:
  Color buttonRengi = Colors.transparent;
  Color metinRengi = Colors.black;
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
              side: MaterialStateProperty.resolveWith<BorderSide>(
                  (states) => BorderSide(color: Colors.black)),
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
                  Shadow(color: shadowColor, blurRadius: 9)
                ],
                fontSize: 30),
          ));
    }

    //Bosluk bırakmak için kullanılır.
    Widget bosluk() {
      return const SizedBox(
        height: 100,
      );
    }

    //Düzen kısmı buradır.
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            bosluk(),
            denemebutonu("oyna"),
            bosluk(),
            denemebutonu("ayarlar"),
          ],
        ),
      ),
    );
  }
}
