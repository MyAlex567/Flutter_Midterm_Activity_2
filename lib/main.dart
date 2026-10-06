import 'package:flutter/material.dart';
import 'ui/pages/home.dart';

void main() {
  runApp(const DataBridge());
}

class DataBridge extends StatelessWidget {
  const DataBridge({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}