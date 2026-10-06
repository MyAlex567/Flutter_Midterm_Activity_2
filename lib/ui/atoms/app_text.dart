import 'package:flutter/material.dart';

enum DefinedStyle { pokemonName, pokemonHp, pokemonType, pageTitle}

class AppText extends StatelessWidget {
  final String text;
  final DefinedStyle definedStyle;
  final Color? color;
  final FontWeight? bold;
  final double? size;

  const AppText({
    super.key,
    required this.text,
    required this.definedStyle,
    this.color,
    this.bold,
    this.size
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = switch(definedStyle){
      DefinedStyle.pageTitle => TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      DefinedStyle.pokemonName => TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      DefinedStyle.pokemonHp => TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      DefinedStyle.pokemonType => TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
    };
    return Text(text.toUpperCase(), style: textStyle);
  }
}