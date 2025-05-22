class FoodItem {
  final String name;
  final String imgURL;
  final double price;
  final bool isFavorite;

  FoodItem({
    required this.name,
    required this.imgURL,
    required this.price,
    this.isFavorite = false,
  });

  FoodItem copyWith({
    String? name,
    String? imgURL,
    double? price,
    bool? isFavorite,
  }) {
    return FoodItem(
      name: name ?? this.name,
      imgURL: imgURL ?? this.imgURL,
      price: price ?? this.price,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}

List<FoodItem> food = [
  FoodItem(
    name: 'Beef Burger',
    imgURL:
        'https://www.freepnglogos.com/uploads/burger-png/burger-png-transparent-images-download-clip-art-30.png',
    price: 8.5,
  ),
  FoodItem(
    name: 'Chicken Burger',
    imgURL:
        'https://www.freepnglogos.com/uploads/burger-png/burger-png-chicken-raised-without-antibiotics-guarantee-8.png',
    price: 8.5,
  ),
  FoodItem(
    name: 'Cheese Burger',
    imgURL:
        'https://www.freepnglogos.com/uploads/burger-png/rustlers-flame-grilled-cheeseburger-22.png',
    price: 8,
  ),
  FoodItem(
    name: 'Chicken Pizza',
    imgURL:
        'https://www.freepnglogos.com/uploads/bread-png/wings-garlic-bread-extras-menu-cottage-inn-pizza-34.png',
    price: 7.5,
  ),
  FoodItem(
    name: 'Pasta',
    imgURL:
        'https://www.freepnglogos.com/uploads/pasta-png/pasta-menu-first-street-bar-and-grill-25.png',
    price: 7.5,
  ),
];
