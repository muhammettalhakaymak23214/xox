import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class xoxGameScreen extends StatefulWidget {
  const xoxGameScreen({super.key});

  @override
  State<xoxGameScreen> createState() => _xoxGameScreenState();
}

class _xoxGameScreenState extends State<xoxGameScreen> {
  Widget kutu() {
    return TextButton(onPressed: () {}, child: Text("dfgdfgdfg"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Row(
            children: [kutu(), kutu(), kutu()],
          ),
          Row(
            children: [kutu(), kutu(), kutu()],
          ),
          Row(
            children: [kutu(), kutu(), kutu()],
          )
        ]),
      ),
    );
  }
}
