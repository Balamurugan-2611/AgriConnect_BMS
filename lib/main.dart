import 'package:bootcamp/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SmartAgriConnectApp());
}

class SmartAgriConnectApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart AgriConnect',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
