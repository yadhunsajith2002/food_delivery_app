import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_model.dart';

class Foodtile extends StatelessWidget {
  const Foodtile({
    super.key,
    required this.food,
    required this.onTap,
  });

  final FoodModel food;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(food.name),
                      Text(
                        "\$" + food.price.toString(),
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        food.description,
                        style: TextStyle(
                            color:
                                Theme.of(context).colorScheme.inversePrimary),
                      )
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Hero(
                    transitionOnUserGestures: true,
                    tag: food.imagePath,
                    child: Image.asset(
                      food.imagePath,
                      height: 120,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Divider(
          color: Theme.of(context).colorScheme.tertiary,
        )
      ],
    );
  }
}
