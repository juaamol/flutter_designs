import 'package:flutter/material.dart';
import 'package:flutter_designs/src/pages/basic.page.dart';
import 'package:flutter_designs/src/pages/scroll.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Designs',
      initialRoute: 'scroll',
      routes: {
        'basic': (BuildContext context) => BasicPage(),
        'scroll': (BuildContext context) => ScrollPage(),
      },
    );
  }
}