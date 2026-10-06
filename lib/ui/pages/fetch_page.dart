import 'package:flutter/material.dart';

class FetchPage extends StatefulWidget {
  const new({super.key});

  @override
  State<FetchPage> createState() => _FetchPageState();
}

class _FetchPageState extends State<FetchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("test"),),
    );
  }
}