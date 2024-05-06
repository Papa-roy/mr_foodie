class Food {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCategory category;
  List<Addon> avalableAddons;

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.avalableAddons,
  });
}

enum FoodCategory {
  burgers,
  pizza,
  salads,
  drinks,
  desserts,
}

class Addon {
  String name;
  double price;

  Addon({
    required this.name,
    required this.price,
  });
}
