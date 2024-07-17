import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:jalkoluk/second_page.dart';

void main() {
  runApp(Regions7());
}

class Regions7 extends StatelessWidget {
  Regions7({Key? key}) : super(key: key);
  //int san = 15;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<int> sandar = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
  ];
  List<String> oblastynAttary = [
    'Batken',
    'Jalal-Abad',
    'Yssyk-Kol',
    'Naryn',
    'Osh',
    'Talas',
    'Chuy'
  ];
  @override
  Widget build(BuildContext context) {
    var check;
    return Scaffold(
      backgroundColor: Colors.purple,
      // mainAxisAlignment:MainAxisAlignment.spaceAround,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('Lesson 7. Жалкоолор учун'),
        elevation: 20,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Кыргызстанда  7 область бар',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40),
              // centerTitle: true,
            ),
          ),
          Center(
            child: Text(
              oblastynAttary[2].toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 40),
              // centerTitle: true,
            ),
          ),
          Center(
            child: Text(
              sandar[1].toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 40),
              // centerTitle: true,
            ),
          ),
          const Divider(
            height: 70,
            color: Colors.white,
          ),
          const SizedBox(
            height: 30,
          ),
          ChoiceButtonWidget(
            text: 'Туура',
            onTap: () {},
            color: Colors.green,
          ),
          const SizedBox(
            height: 10,
          ),
          ChoiceButtonWidget(
            text: 'Ката',
            color: Colors.teal,
            onTap: () {},
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.check,
                    color: Colors.blueAccent,
                    size: 60,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.close,
                    color: Colors.redAccent,
                    size: 60,
                  )),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SecondPage(),
                ),
              );
            },
            child: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}

class ChoiceButtonWidget extends StatelessWidget {
  ChoiceButtonWidget(
      {Key? key, required this.text, required this.color, required this.onTap})
      : super(key: key);
  final String? text;
  List<Widget> icons = [];
  final Color color;
  void Function()? onTap;

  //get icons => null;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: color,
        child: InkWell(
          splashColor: Colors.teal,
          onTap: () {
            icons.add(Icon(
              Icons.check,
              color: Colors.amber,
              size: 45,
            ));
          },
          child: Container(
            width: 300.0,
            height: 50.0,
            child: Center(
              child: Text(
                text!,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
