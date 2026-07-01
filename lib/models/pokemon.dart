class Pokemon {
  final int id;
  final String name;
  final String grade;
  final String imagePath;
  final String status;
  final double height;
  final double weight;
  final String ability;
  final String description;
  final DateTime purchaseDate;
  final DateTime? assembledDate;


  Pokemon({
    required this.id,
    required this.name,
    required this.grade,
    required this.imagePath,
    required this.status,
    required this.height,
    required this.weight,
    required this.ability,
    required this.description,
    required this.purchaseDate,
    this.assembledDate,
  });
}
