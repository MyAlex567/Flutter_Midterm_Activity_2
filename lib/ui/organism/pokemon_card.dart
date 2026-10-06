import 'package:flutter/material.dart';
import '../molecules/pokemon_header.dart';
import '../molecules/pokemon_image_display.dart';
import '../molecules/pokemon_type_badge.dart';
import '../../utils/pokemon_type_colors.dart';

class PokemonCard extends StatelessWidget {
  final String name;
  final String hp;
  final String image;
  final String type;

  const PokemonCard({
    super.key,
    required this.name,
    required this.hp,
    required this.image,
    required this.type
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325,
      height: 500,
      margin: const EdgeInsets.only(bottom: 20.0),
      decoration: BoxDecoration(
        color: PokemonTypeColors.getColor(type),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 306,
            height: 480,
            decoration: BoxDecoration(  
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: PokemonTypeColors.getCardColors(type) 
              ),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: PokemonHeader(name: name, hp: "HP: 500"),
                    ),
                    PokemonImageDisplay(image: image, type: type),
                    SizedBox(height: 10,),
                    PokemonTypeBadge(pokemonType: type),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}