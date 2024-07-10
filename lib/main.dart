import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jalkoluk/second_page.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Кыргызстанда  7 область бар',
              style: TextStyle(fontSize: 40),
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
          Center(
            child: InkWell(
              splashColor: Colors.green,
              onTap: () {},
              child: Container(
                width: 300.0,
                height: 50.0,
                color: Colors.orange,
                child: const Center(
                  child: Text(
                    'туура',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: InkWell(
              splashColor: Colors.black,
              onTap: () {},
              child: Container(
                width: 300.0,
                height: 50.0,
                color: Colors.yellow,
                child: const Center(
                  child: Text(
                    'ката',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
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
