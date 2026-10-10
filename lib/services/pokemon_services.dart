import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;

import '../models/pokemon.dart';

class PokemonServices {
    Future<Pokemon> streamfetchPokemon() async{
    final int pokemonId = Random().nextInt(1000) + 1;

    final uri = Uri.parse('https://pokeapi.co/api/v2/pokemon/$pokemonId/');
    final response = await http.get(uri).timeout(const Duration(seconds: 3));

    if(response.statusCode != 200){
      throw Exception('Server: ${response.statusCode}');
    }

    final pokemon = jsonDecode(response.body) as Map<String, dynamic>;

    return Pokemon.fromJson(pokemon);
  }  

  Future<List<Pokemon>> fetchPokemon() async{
    final uri = Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=5');
    final response = await http.get(uri).timeout(const Duration(seconds: 2));

    if(response.statusCode != 200){
      throw Exception('Server: ${response.statusCode}');
    }

    final list = jsonDecode(response.body)['results'] as List<dynamic>;

    final pokemons = await Future.wait(
      list.map((json) async{
        final apiEndpoint = Uri.parse(json['url']);
        final response = await http.get(apiEndpoint);

        if(response.statusCode != 200){
          throw Exception('Server: ${response.statusCode}');
        }        
        
        return Pokemon.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
      })
    );

    return pokemons;
  }   
}