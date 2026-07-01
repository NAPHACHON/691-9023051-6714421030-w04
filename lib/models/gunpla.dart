class Gunpla {
  final int id;
  final String name;
  final String grade;
  final String imagePath;
  final String status;
  final DateTime purchaseDate;
  final DateTime? assembledDate;


  Gunpla({
    required this.id,
    required this.name,
    required this.grade,
    required this.imagePath,
    required this.status,
    required this.purchaseDate,
    this.assembledDate,
  });
}
