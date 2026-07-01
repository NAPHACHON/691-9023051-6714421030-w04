import 'package:flutter/material.dart';
import '../data/pokemon_data.dart';
import 'pokemon_detail_screen.dart';


class PokemonListScreen extends StatelessWidget {
  const PokemonListScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pokémon Collection")),
      body: ListView.builder(
        itemCount: pokemonList.length,
        itemBuilder: (context, index) {
          final pokemon = pokemonList[index];
          return ListTile(
            leading: Image.asset(pokemon.imagePath),
            title: Text(pokemon.name),
            subtitle: Text("${pokemon.grade} • ${pokemon.status}"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => PokemonDetailScreen(pokemon: pokemon),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
