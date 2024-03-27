import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_model.dart';

class QuantitySelector extends StatelessWidget {
  const QuantitySelector(
      {super.key,
      required this.quantity,
      required this.food,
      required this.onIncrement,
      required this.onDecrement});

  final int quantity;
  final FoodModel food;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
              onPressed: onDecrement,
              icon: Icon(
                Icons.remove,
                size: 20,
                color: Theme.of(context).colorScheme.primary,
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Center(child: Text(quantity.toString())),
          ),
          IconButton(
              onPressed: onIncrement,
              icon: Icon(
                Icons.add,
                size: 20,
                color: Theme.of(context).colorScheme.primary,
              )),
        ],
      ),
    );
  }
}
