import 'package:flutter/material.dart';

class PokemonSprite extends StatelessWidget {
  final String image;

  const PokemonSprite({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
      width: 120,
      height: 220,
      fit: BoxFit.contain,      
    );
  }
}