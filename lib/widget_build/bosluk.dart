import 'package:flutter/cupertino.dart';

//Bosluk bırakmak için kullanılır.
class Bosluk {
  Widget boslukGenislik(double boslukDegeri) {
    return SizedBox(
      width: boslukDegeri,
    );
  }

  Widget boslukYukseklik(double boslukDegeri) {
    return SizedBox(
      height: boslukDegeri,
    );
  }
}
