
import 'package:flutter/material.dart';

class Circular extends StatefulWidget {
  const Circular({Key? key}) : super(key: key);

  @override
  State<Circular> createState() => _CircularState();
}


class _CircularState extends State<Circular> with TickerProviderStateMixin {


  late final AnimationController _controller = AnimationController(vsync: this, duration: Duration(seconds: 1));
  late final Animation<Color> _animation = Tween<Color>(begin: Colors.yellow, end: Colors.blue).animate(_controller);

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cicrular Class'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              color: Colors.black,
              backgroundColor: Colors.red,
              strokeWidth: 5,
              //valueColor: Colors.green,
            ),
            SizedBox(height: 50,),
            LinearProgressIndicator(
              color: Colors.red,
              backgroundColor: Colors.black,
              valueColor: _animation,
              value: .50,
            )
          ],
        ),
      ),
    );
  }
}
