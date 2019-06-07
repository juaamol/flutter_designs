import 'package:flutter/material.dart';
import 'package:flutter_designs/src/pages/basic.page.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Designs',
      initialRoute: 'basic',
      routes: {
        'basic': (BuildContext context) => BasicPage()
      },
    );
  }
}