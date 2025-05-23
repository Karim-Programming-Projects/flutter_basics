import 'package:flutter/material.dart';
import 'package:food_app/models/food_item.dart';
import 'package:food_app/widgets/favorite_item.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final favoriteFood = food.where((foodItem) => foodItem.isFavorite == true);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children:
              favoriteFood
                  .map((foodItem) => FavoriteItem(foodItem: foodItem))
                  .toList(),
        ),
      ),
    );
  }
}
