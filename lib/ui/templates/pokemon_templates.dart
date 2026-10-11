import 'package:flutter/material.dart';
import '../atoms/app_text.dart';

class PokemonTemplates extends StatelessWidget {
  final List<Widget> pokemonList;

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
              pokemonList[index],
            ],
          ),
        );
      }
    );
  }
}