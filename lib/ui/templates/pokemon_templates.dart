import 'package:flutter/material.dart';
import '../../models/pokemon.dart';
import '../atoms/app_text.dart';
import '../organism/pokemon_card.dart';

class PokemonTemplates extends StatelessWidget {
  final List<Pokemon> pokemonList;

  const PokemonTemplates({
    super.key,
    required this.pokemonList
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: pokemonList.length,
      itemBuilder: (_, index){
        return Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              AppText(text: "P O K É M O N", definedStyle: DefinedStyle.pageTitle),
              PokemonCard(
                name: pokemonList[index].name, 
                hp: "HP: 500", 
                image: pokemonList[index].image, 
                type: pokemonList[index].type  
              ),
            ],
          ),
        );
      }
    );
  }
}