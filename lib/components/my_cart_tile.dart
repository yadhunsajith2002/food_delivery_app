import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_quantity_selector.dart';
import 'package:food_delivery/models/restoraunt.dart';
import 'package:provider/provider.dart';

import 'package:food_delivery/models/cart_item_model.dart';

class MyCartTile extends StatelessWidget {
  const MyCartTile({
    Key? key,
    required this.cartItem,
  }) : super(key: key);

  final CartItemModel cartItem;

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (BuildContext context, restuarant, Widget? child) {
        return Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        cartItem.food.imagePath,
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text(
                            cartItem.food.name,
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Text(
                          "\$" + cartItem.food.price.toString(),
                          style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        QuantitySelector(
                          quantity: cartItem.quantity,
                          food: cartItem.food,
                          onIncrement: () {
                            restuarant.addToCart(
                                cartItem.food, cartItem.selectedAddons);
                          },
                          onDecrement: () {
                            restuarant.removeFromCart(cartItem);
                          },
                        ),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
              ),
              SizedBox(
                height: cartItem.selectedAddons.isEmpty ? 0 : 60,
                child: ListView(
                  padding:
                      const EdgeInsets.only(left: 10, bottom: 10, right: 10),
                  scrollDirection: Axis.horizontal,
                  children: cartItem.selectedAddons
                      .map(
                        (addon) => Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: FilterChip(
                            label: Row(
                              children: [
                                Text(addon.name),
                                Text("  (\$${addon.price})"),
                              ],
                            ),
                            onSelected: (value) {},
                            shape: StadiumBorder(
                                side: BorderSide(
                              color: Theme.of(context).colorScheme.primary,
                            )),
                            backgroundColor:
                                Theme.of(context).colorScheme.secondary,
                            labelStyle: TextStyle(
                              fontSize: 12,
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
