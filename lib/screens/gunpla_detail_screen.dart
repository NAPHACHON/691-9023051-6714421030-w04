import 'package:flutter/material.dart';
import '../models/gunpla.dart';
import 'package:intl/intl.dart';


class GunplaDetailScreen extends StatelessWidget {
  final Gunpla gunpla;


  const GunplaDetailScreen({super.key, required this.gunpla});


  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('yyyy-MM-dd');


    return Scaffold(
      appBar: AppBar(title: Text(gunpla.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(flex: 3, child: Image.asset(gunpla.imagePath)),
            const SizedBox(height: 16),
            Expanded(
              child: Text(
                "Type: ${gunpla.grade}",
                style: const TextStyle(fontSize: 18),
              ),
            ),
            Expanded(
              child: Text(
                "Status: ${gunpla.status}",
                style: const TextStyle(fontSize: 18),
              ),
            ),
            Expanded(
              child: Text(
                "First Seen: ${dateFormat.format(gunpla.purchaseDate)}",
                style: const TextStyle(fontSize: 16),
              ),
            ),
            Expanded(
              child: Text(
                "Caught Date: ${gunpla.assembledDate != null ? dateFormat.format(gunpla.assembledDate!) : 'Not caught yet'}",
                style: const TextStyle(fontSize: 16),
              ),
            ),
            Text(
              "Pokédex #${gunpla.id}",
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
