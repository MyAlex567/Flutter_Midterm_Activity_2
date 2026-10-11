import 'package:databridge/ui/atoms/app_text.dart';
import 'package:flutter/material.dart';
import '../../models/pokemon.dart';
import '../atoms/app_button.dart';
import '../templates/pokemon_templates.dart';
import 'stream_page.dart';
import '../../services/pokemon_services.dart';
import '../organism/pokemon_card.dart';

class SingleFetch extends StatefulWidget {
  const SingleFetch({super.key});

  @override
  State<SingleFetch> createState() => _SingleFetchState();
}

class _SingleFetchState extends State<SingleFetch> {

  late Future<List<Pokemon>> _pokemonFuture;
  final PokemonServices _pokemonServices = PokemonServices();  

  @override
  void initState(){
    super.initState();
    _pokemonFuture = _pokemonServices.fetchPokemon();
  }

  void _retry(){
    setState(() {
      _pokemonFuture = _pokemonServices.fetchPokemon();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future Builder"),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context,
               MaterialPageRoute(builder: (context) => StreamPage())
              );
            }, 
            icon: Icon(Icons.arrow_forward),
            tooltip: "Go to Stream Page",
          )
        ],  
      ),
      body: FutureBuilder<List<Pokemon>>(
        future: _pokemonFuture, 
        builder: _buildBody,
      )
    );
  }

  Widget _buildBody(BuildContext context, AsyncSnapshot<List<Pokemon>> snapshot){
    if(snapshot.connectionState == ConnectionState.waiting){
      return const Center(child: CircularProgressIndicator(),);
    }

    if(snapshot.hasError){
      return Center(
        child: AppButton(label: "Failed: failed to fetch data/Check your internet Connection", customOnPressed: _retry)
      );
    }

    final pokemons = snapshot.data ?? [];

    if(pokemons.isEmpty){
      return const Center(child: AppText(text: "There's no Pokemon now", definedStyle: DefinedStyle.pokemonName),);
    }

    final pokemonCards = pokemons.map((pok){
      return PokemonCard(
        name: pok.name, 
        hp: "HP: 500", 
        image: pok.image, 
        type: pok.type  
      );
    }).toList();

    return PokemonTemplates(pokemonList: pokemonCards);
  }

}