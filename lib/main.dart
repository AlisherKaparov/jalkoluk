import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const Regions7());
}

class Regions7 extends StatelessWidget {
  const Regions7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('Lesson 7. Жалкоолор учун'),
        elevation: 20,
      ),
      body: const Column(
        children: [
          Center(
            child: Text(
              'Кыргызстанда  7 область бар',
              style: TextStyle(fontSize: 40),
              // centerTitle: true,
            ),
          ),
          Expanded(
            //height:
            child: Material(
              color: Colors.blue,
              child: InkWell(
                highlightColor: Colors.amber,

                //splashColor: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
