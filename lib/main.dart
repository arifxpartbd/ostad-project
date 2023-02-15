import 'package:flutter/material.dart';
import 'package:ostadproject/aspectratio.dart';
import 'package:ostadproject/circular%20_progress.dart';
import 'package:ostadproject/fourassaignment/mytodoapp.dart';
import 'package:ostadproject/homescreen.dart';
import 'package:ostadproject/list_view.dart';
import 'package:ostadproject/myaspectration.dart';
import 'package:ostadproject/myfractionalsizebox.dart';
import 'package:ostadproject/mylayoutbuilder.dart';
import 'package:ostadproject/threeassignment/listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ostad Batch 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyToDoApp()
    );
  }
}

