import 'package:flutter/material.dart';

class MyAspectRatio extends StatefulWidget {
  const MyAspectRatio({Key? key}) : super(key: key);

  @override
  State<MyAspectRatio> createState() => _MyAspectRatioState();
}

class _MyAspectRatioState extends State<MyAspectRatio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aspect Ratio'),
      ),
      body: Center(
        child: Container(
          color: Colors.green,
          height: 500,
          width: double.infinity,
          alignment: Alignment.center,
          child: AspectRatio(
            aspectRatio: 16/9,
            child: Container(
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
