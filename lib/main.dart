import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Animtion on Container",
    home: Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double _width = 100;
  double _height = 100;
  Color _color = Colors.blueGrey;
  BorderRadiusGeometry _borderadius = BorderRadius.circular(20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Animation"),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderadius,
          ),
          duration: Duration(seconds: 20),
          curve: Curves.fastOutSlowIn,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            final _random = Random();
            _width = _random.nextInt(300).toDouble();
            _height = _random.nextInt(300).toDouble();
            _color = Color.fromRGBO(_random.nextInt(255), _random.nextInt(255),
                _random.nextInt(255), 1);
            _borderadius =
                BorderRadius.circular(_random.nextInt(10).toDouble());
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
