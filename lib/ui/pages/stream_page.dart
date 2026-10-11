import 'package:flutter/material.dart';
import 'dart:async';
import '../../models/pokemon.dart';
import '../atoms/app_text.dart';
import '../templates/pokemon_templates.dart';
import '../../services/pokemon_services.dart';
import '../organism/pokemon_card.dart';

class StreamPage extends StatefulWidget {
  const StreamPage({super.key});

  @override
  State<StreamPage> createState() => _StreamPageState();
}

class _StreamPageState extends State<StreamPage> {

  final StreamController<Pokemon> _belt = StreamController<Pokemon>();
  final PokemonServices _pokemonServices = PokemonServices(); 

  Timer? _timer;
  bool _fetching = false;
  Future<void> producePokemon() async {
    if(_fetching) return;

    _fetching = true;

    try{

      final pokemon = await _pokemonServices.streamfetchPokemon();

      if(!_belt.isClosed){
        _belt.add(pokemon);
      }

    }catch(e){
      if(!_belt.isClosed){
        _belt.addError("Error: something went wrong");
      }
    }finally{
      _fetching = false;
    }
  }


  @override
  void initState(){
    super.initState();
    producePokemon();
    _timer = Timer.periodic(const Duration(seconds: 3), (_) => producePokemon());
  }

  @override
  void dispose(){
    _timer?.cancel();
    _belt.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stream Page"),),
      body: StreamBuilder(
        stream: _belt.stream, 
        builder: (context, snapshot){
          
          if(snapshot.hasError){
            return Center(
              child: AppText(text: "${snapshot.error}", definedStyle: DefinedStyle.pokemonName,),
            );
          }

          if(!snapshot.hasData){
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          final List<Pokemon> pokemon = [snapshot.data!];

          final pokemonCards = pokemon.map((pok){
            return PokemonCard(
              name: pok.name, 
              hp: "HP: 500", 
              image: pok.image, 
              type: pok.type  
            );
          }).toList();          

          return PokemonTemplates(pokemonList: pokemonCards);
        }
      ),
    );
  }
}