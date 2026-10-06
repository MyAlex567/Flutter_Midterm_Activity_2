import 'package:flutter/material.dart';
import '../atoms/app_text.dart';

class PokemonTypeBadge extends StatelessWidget {
  final String pokemonType;

  const PokemonTypeBadge({
    super.key,
    required this.pokemonType
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 274,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: AppText(text: "$pokemonType Type Pokémon", definedStyle: DefinedStyle.pokemonType)
      ),
    );
  }
}