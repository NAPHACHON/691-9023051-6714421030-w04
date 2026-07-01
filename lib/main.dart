import 'package:flutter/material.dart';
import 'screens/pokemon_list_screen.dart';


void main() {
  runApp(const PokemonApp());
}


class PokemonApp extends StatelessWidget {
  const PokemonApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokémon Viewer',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const PokemonListScreen(),
    );
  }
}
