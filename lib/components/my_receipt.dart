import 'package:flutter/material.dart';
import 'package:food_delivery/models/restoraunt.dart';
import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 15, bottom: 25),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Thank you for your order!"),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).colorScheme.secondary),
                  borderRadius: BorderRadius.circular(10)),
              child: Consumer<Restaurant>(
                builder: (context, restaurant, child) {
                  return Text(restaurant.displayCartReceipt());
                },
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text("Estimated delivery time is 4:40 PM"),
          ],
        ),
      ),
    );
  }
}
