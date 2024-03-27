import 'package:flutter/material.dart';
import 'package:food_delivery/components/custum_button.dart';
import 'package:food_delivery/components/my_cart_tile.dart';
import 'package:food_delivery/models/restoraunt.dart';
import 'package:food_delivery/pages/payement_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        final userCart = restaurant.cart;

        return Scaffold(
          appBar: AppBar(
            title: const Text("C A R T"),
            actions: [
              IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text(
                            "Are you sure you want to clear the cart?"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Cancel"),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              restaurant.clearCart();
                            },
                            child: const Text("Yes"),
                          ),
                        ],
                      ),
                    );
                  },
                  icon: const Icon(Icons.delete))
            ],
          ),
          body: userCart.isEmpty
              ? Center(
                  child: Text(
                    "Your Cart is Empty",
                    style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                )
              : Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                          itemCount: userCart.length,
                          itemBuilder: (context, index) {
                            final cartItem = userCart[index];
                            return MyCartTile(cartItem: cartItem);
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: MyButton(
                          ontap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => PayementPage(),
                            ));
                          },
                          text: "Checkout"),
                    )
                  ],
                ),
        );
      },
    );
  }
}
