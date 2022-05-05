class Project {
  String name;
  int year;
  String description;
  String imageUrl;
  List<String>? technologiesUsed;

  Project({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.year,
    this.technologiesUsed,
  });
}
