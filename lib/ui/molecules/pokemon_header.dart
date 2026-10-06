import 'package:flutter/material.dart';
import '../atoms/app_text.dart';

class PokemonHeader extends StatelessWidget {
  final String name;
  final String hp;

  const PokemonHeader({
    super.key,
    required this.name,
    required this.hp
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppText(text: name, definedStyle: DefinedStyle.pokemonName),
        AppText(text: hp, definedStyle: DefinedStyle.pokemonHp),
      ],
    );
  }
}