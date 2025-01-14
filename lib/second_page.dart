import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/video/myFamily.mp4'),
          fit: BoxFit.cover,
        )),
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.black,
          ])),
        ),
      ),
    );
  }
}
