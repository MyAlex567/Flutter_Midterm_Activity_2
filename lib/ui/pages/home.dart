import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../models/pokemon.dart';
import '../atoms/app_button.dart';
import '../templates/pokemon_templates.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late Future<List<Pokemon>> _pokemonFuture;

  Future<List<Pokemon>> fetchPokemon() async{
    final uri = Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=10');
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

  @override
  void initState(){
    super.initState();
    _pokemonFuture = fetchPokemon();
  }

  void _retry(){
    setState(() {
      _pokemonFuture = fetchPokemon();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("API activity"),),
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
      return const Center(child: Text("There's no Pokemon now"),);
    }

    return PokemonTemplates(pokemonList: pokemons);
  }

}