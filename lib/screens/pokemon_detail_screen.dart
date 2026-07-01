import 'package:flutter/material.dart';
import '../models/pokemon.dart';
import 'package:intl/intl.dart';


class PokemonDetailScreen extends StatelessWidget {
  final Pokemon pokemon;


  const PokemonDetailScreen({super.key, required this.pokemon});


  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('yyyy-MM-dd');


    return Scaffold(
      appBar: AppBar(title: Text(pokemon.name)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 250,
              child: Image.asset(pokemon.imagePath, fit: BoxFit.contain),
            ),
            const SizedBox(height: 16),
            Text(
              pokemon.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              "Pokédex #${pokemon.id}",
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            Text(
              pokemon.description,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    _buildInfoRow("Type", pokemon.grade),
                    const Divider(),
                    _buildInfoRow("Status", pokemon.status),
                    const Divider(),
                    _buildInfoRow("Height", "${pokemon.height} m"),
                    const Divider(),
                    _buildInfoRow("Weight", "${pokemon.weight} kg"),
                    const Divider(),
                    _buildInfoRow("Ability", pokemon.ability),
                    const Divider(),
                    _buildInfoRow("First Seen", dateFormat.format(pokemon.purchaseDate)),
                    const Divider(),
                    _buildInfoRow(
                      "Caught Date",
                      pokemon.assembledDate != null
                          ? dateFormat.format(pokemon.assembledDate!)
                          : "Not caught yet",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          Text(value, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
