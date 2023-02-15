import 'package:flutter/material.dart';

class MyFractionalSizeBox extends StatefulWidget {
  const MyFractionalSizeBox({Key? key}) : super(key: key);

  @override
  State<MyFractionalSizeBox> createState() => _MyFractionalSizeBoxState();
}

class _MyFractionalSizeBoxState extends State<MyFractionalSizeBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fractional Size Box'
        ),
      ),
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.5,
          heightFactor: 0.5,
          child: Container(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
