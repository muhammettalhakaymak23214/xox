import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:xox/widget_build/bosluk.dart';
import 'package:xox/widget_build/renkler.dart';

class xoxGameScreen extends StatefulWidget {
  const xoxGameScreen({super.key});

  @override
  State<xoxGameScreen> createState() => _xoxGameScreenState();
}

class _xoxGameScreenState extends State<xoxGameScreen> {
  Widget geriButonu() {
    return Container(
        child: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back, color: Colors.white),
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(Renkler().buttonRengi)),
    ));
  }

  Widget kutu() {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 100,
        width: 100,
        child: TextButton(
            style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Colors.white),
                overlayColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
                  return RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15));
                }),
                side: MaterialStateProperty.resolveWith<BorderSide>(
                    (states) => BorderSide(color: Colors.white, width: 2)),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Renkler().buttonRengi)),
            onPressed: () {},
            child: Text(
              "X",
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
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            geriButonu(),
            Bosluk().bosluk(100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                kutu(),
                kutu(),
                kutu(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                kutu(),
                kutu(),
                kutu(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                kutu(),
                kutu(),
                kutu(),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
