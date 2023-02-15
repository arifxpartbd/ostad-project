import 'package:flutter/material.dart';

class MyLayoutBuilder extends StatefulWidget {
  const MyLayoutBuilder({Key? key}) : super(key: key);

  @override
  State<MyLayoutBuilder> createState() => _MyLayoutBuilderState();
}

class _MyLayoutBuilderState extends State<MyLayoutBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Builder'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth>600){
            return Container(
              height: 400,
              width: 350,
              color: Colors.green,
            );
          }
          else{
            return Container(
              height: 250,
              width: 250,
              color: Colors.yellow,
            );
          }
        },

      ),
    );
  }
}
