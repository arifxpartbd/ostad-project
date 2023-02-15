import 'package:flutter/material.dart';

class Aspratio extends StatefulWidget {
  const Aspratio({Key? key}) : super(key: key);

  @override
  State<Aspratio> createState() => _AspratioState();
}

class _AspratioState extends State<Aspratio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('aspect ratio'),),
      body: Container(
        height: 500,
        width: 300,
        color: Colors.red,
        alignment: Alignment.center,
        child: AspectRatio(
          aspectRatio: 1/2,
          child: Container(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}

