import 'package:flutter/material.dart';

class ListViewCreate extends StatefulWidget {
  const ListViewCreate({Key? key}) : super(key: key);

  @override
  State<ListViewCreate> createState() => _ListViewCreateState();
}

class _ListViewCreateState extends State<ListViewCreate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: ListView.builder(
        itemCount: 20,
          itemBuilder: (context, index){
            return Text("Hello arif ${ 20- index}");
          }),
    );
  }
}
