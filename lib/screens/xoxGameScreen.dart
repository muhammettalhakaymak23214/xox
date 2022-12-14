import 'package:flutter/material.dart';

import 'package:xox/widget_build/bosluk.dart';
import 'package:xox/widget_build/renkler.dart';

import '../xoxKutuXmiOmu.dart';

class xoxGameScreen extends StatefulWidget {
  const xoxGameScreen({super.key});

  @override
  State<xoxGameScreen> createState() => _xoxGameScreenState();
}

class _xoxGameScreenState extends State<xoxGameScreen> {
  //Buton degerleri
  String s1s1 = "";
  String s1s2 = "";
  String s1s3 = "";
  String s2s1 = "";
  String s2s2 = "";
  String s2s3 = "";
  String s3s1 = "";
  String s3s2 = "";
  String s3s3 = "";

  //O an kutuya yazdirilacak deger
  String kutuyaYazilanDeger = "X";

  void xmioMu(double butonId) {
    if (butonId == 1.1 && s1s1 == "") {
      print("buna da girdi");

      s1s1 = kutuyaNeYazilacak(kutuyaYazilanDeger);
    } else if (butonId == 1.2 && s1s2 == "") {
      s1s2 = kutuyaNeYazilacak(kutuyaYazilanDeger);
    } else if (butonId == 1.3 && s1s3 == "") {
      s1s3 = kutuyaNeYazilacak(kutuyaYazilanDeger);
    } else if (butonId == 2.1 && s2s1 == "") {
      s2s1 = kutuyaNeYazilacak(kutuyaYazilanDeger);
    } else if (butonId == 2.2 && s2s2 == "") {
      s2s2 = kutuyaNeYazilacak(kutuyaYazilanDeger);
    } else if (butonId == 2.3 && s2s3 == "") {
      s2s3 = kutuyaNeYazilacak(kutuyaYazilanDeger);
    } else if (butonId == 3.1 && s3s1 == "") {
      s3s1 = kutuyaNeYazilacak(kutuyaYazilanDeger);
    } else if (butonId == 3.2 && s3s2 == "") {
      s3s2 = kutuyaNeYazilacak(kutuyaYazilanDeger);
    } else if (butonId == 3.3 && s3s3 == "") {
      s3s3 = kutuyaNeYazilacak(kutuyaYazilanDeger);
    }
  }

  String kutuyaNeYazilacak(String kutuYazilanDeger) {
    if (kutuYazilanDeger == "X") {
      kutuyaYazilanDeger = "O";
      return "X";
    } else {
      kutuyaYazilanDeger = "X";
      return "O";
    }
  }

  String kutuyaTextiGonder(buttonId) {
    if (buttonId == 1.1) {
      return s1s1;
    } else if (buttonId == 1.2) {
      return s1s2;
    } else if (buttonId == 1.3) {
      return s1s3;
    } else if (buttonId == 2.1) {
      return s2s1;
    } else if (buttonId == 2.2) {
      return s2s2;
    } else if (buttonId == 2.3) {
      return s2s3;
    } else if (buttonId == 3.1) {
      return s3s1;
    } else if (buttonId == 3.2) {
      return s3s2;
    } else if (buttonId == 3.3) {
      return s3s3;
    } else {
      return "Hata";
    }
  }

  //Geri butonu
  Widget geriButonu(double deger) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(
        size: deger,
        Icons.arrow_back,
        color: Colors.white,
        shadows: [
          Shadow(color: Renkler().shadowColor, blurRadius: 3),
          Shadow(color: Renkler().shadowColor, blurRadius: 6),
          Shadow(color: Renkler().shadowColor, blurRadius: 9),
          Shadow(color: Renkler().shadowColor, blurRadius: 12),
          Shadow(color: Renkler().shadowColor, blurRadius: 15),
        ],
      ),
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(Renkler().buttonRengi)),
    );
  }

  Widget kimdeSira(deger) {
    return Text(
      "Sıra " + kutuyaYazilanDeger + " tarafında :",
      style: TextStyle(
        color: Renkler().metinRengi,
        fontSize: deger / 2.5,
        shadows: [
          Shadow(color: Renkler().shadowColor, blurRadius: 3),
          Shadow(color: Renkler().shadowColor, blurRadius: 6),
          Shadow(color: Renkler().shadowColor, blurRadius: 9),
          Shadow(color: Renkler().shadowColor, blurRadius: 12),
          Shadow(color: Renkler().shadowColor, blurRadius: 15),
        ],
      ),
    );
  }

  //Kutular
  Widget kutu(double buttonId, deger) {
    return TextButton(
        style: ButtonStyle(
            shadowColor: MaterialStateProperty.all(Colors.white),
            overlayColor: MaterialStateProperty.all(Colors.white),
            shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
              return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0));
            }),
            side: MaterialStateProperty.resolveWith<BorderSide>(
                (states) => BorderSide(
                      color: Colors.white,
                    )),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.black)),
        onPressed: () {
          xmioMu(buttonId);
          setState(() {});
        },
        child: Text(
          kutuyaTextiGonder(buttonId),
          style: TextStyle(
              color: Renkler().metinRengi,
              shadows: [
                Shadow(color: Renkler().shadowColor, blurRadius: 3),
                Shadow(color: Renkler().shadowColor, blurRadius: 6),
                Shadow(color: Renkler().shadowColor, blurRadius: 9),
                Shadow(color: Renkler().shadowColor, blurRadius: 12),
                Shadow(color: Renkler().shadowColor, blurRadius: 15),
              ],
              fontSize: deger / 2.5),
        ));
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    final double deviceWidth = mediaQueryData.size.width;
    final double heightInDesign = 260;
    final double widthInDesign = 170;
    final double padding = 18;
    final double spaceBetween = 24;
    final double responsiveWidth = (deviceWidth / 5);

    final double responsiveHeight = responsiveWidth;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: [
          Padding(
            padding: EdgeInsets.all(responsiveWidth / 2.5),
            child: Container(
                alignment: Alignment.topLeft,
                child: geriButonu(responsiveWidth / 2)),
          ),
          SizedBox(
            height: responsiveHeight / 1.5,
          ),
          Container(
              alignment: Alignment.center,
              width: responsiveWidth * 4,
              child: kimdeSira(responsiveWidth)),
          SizedBox(
            height: responsiveHeight / 1.5,
          ),
          Row(
            children: [
              SizedBox(
                width: responsiveWidth,
              ),
              Container(
                  height: responsiveHeight,
                  width: responsiveWidth,
                  child: kutu(1.1, responsiveWidth)),
              Container(
                  height: responsiveHeight,
                  width: responsiveWidth,
                  child: kutu(1.2, responsiveWidth)),
              Container(
                  height: responsiveHeight,
                  width: responsiveWidth,
                  child: kutu(1.3, responsiveWidth)),
              SizedBox(
                width: responsiveWidth,
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: responsiveWidth,
              ),
              Container(
                  height: responsiveHeight,
                  width: responsiveWidth,
                  child: kutu(2.1, responsiveWidth)),
              Container(
                  height: responsiveHeight,
                  width: responsiveWidth,
                  child: kutu(2.2, responsiveWidth)),
              Container(
                  height: responsiveHeight,
                  width: responsiveWidth,
                  child: kutu(2.3, responsiveWidth)),
              SizedBox(
                width: responsiveWidth,
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: responsiveWidth,
              ),
              Container(
                  height: responsiveHeight,
                  width: responsiveWidth,
                  child: kutu(3.1, responsiveWidth)),
              Container(
                  height: responsiveHeight,
                  width: responsiveWidth,
                  child: kutu(3.2, responsiveWidth)),
              Container(
                  height: responsiveHeight,
                  width: responsiveWidth,
                  child: kutu(3.3, responsiveWidth)),
              SizedBox(
                width: responsiveWidth,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
