import 'package:flutter/material.dart';
import '../atoms/pokemon_sprite.dart';
import '../../utils/pokemon_type_colors.dart';

class PokemonImageDisplay extends StatelessWidget {
  final String image;
  final String type;

  const PokemonImageDisplay({
    super.key,
    required this.image,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 274,
      height: 200,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.center,
          radius: 0.9,
          colors: PokemonTypeColors.getColors(type),
        ),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: PokemonTypeColors.getColor(type),
          width: 3,
        ),
      ),
      child: Center(
        child: PokemonSprite(
          image: image,
        ),
      ),
    );
  }
}