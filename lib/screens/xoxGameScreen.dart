import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:xox/widget_build/bosluk.dart';

class xoxGameScreen extends StatefulWidget {
  const xoxGameScreen({super.key});

  @override
  State<xoxGameScreen> createState() => _xoxGameScreenState();
}

class _xoxGameScreenState extends State<xoxGameScreen> {
  Widget kutu() {
    return TextButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
              return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15));
            }),
            side: MaterialStateProperty.resolveWith<BorderSide>(
                (states) => BorderSide(color: Colors.white, width: 2)),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.red)),
        onPressed: () {},
        child: Text("X"));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [kutu(), kutu(), kutu()],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [kutu(), kutu(), kutu()],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [kutu(), kutu(), kutu()],
            )
          ]),
        ),
      ),
    );
  }
}
