import 'package:flutter/material.dart';

class Xo {
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
  var bir;

  //O an kutuya yazdirilacak deger
  String kutuyaYazilanDeger = "X";

  void xmioMu(double butonId) {
    if (butonId == 1.1 && s1s1 != "") {
      print("buna da girdi");

      s1s1 = kutuyaNeYazilacak(kutuyaYazilanDeger);
      print(bir);
    } else if (butonId == 1.2 && s1s2 != "") {
      bir = kutuyaNeYazilacak(kutuyaYazilanDeger);
    } else if (butonId == 1.3 && s1s3 != "") {
      s1s3 = kutuyaNeYazilacak(kutuyaYazilanDeger);
    } else if (butonId == 2.1 && s2s1 != "") {
      s2s1 = kutuyaNeYazilacak(kutuyaYazilanDeger);
    } else if (butonId == 2.2 && s2s2 != "") {
      s2s2 = kutuyaNeYazilacak(kutuyaYazilanDeger);
    } else if (butonId == 2.3 && s2s3 != "") {
      s2s3 = kutuyaNeYazilacak(kutuyaYazilanDeger);
    } else if (butonId == 3.1 && s3s1 != "") {
      s3s1 = kutuyaNeYazilacak(kutuyaYazilanDeger);
    } else if (butonId == 3.2 && s3s2 != "") {
      s3s2 = kutuyaNeYazilacak(kutuyaYazilanDeger);
    } else if (butonId == 3.3 && s3s3 != "") {
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
      print("girdi");
      print(bir);
      if (s1s1 == null) {
        return "boyleisinamk";
      } else {
        return s1s1;
      }
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
}
