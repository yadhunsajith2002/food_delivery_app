import 'package:flutter/material.dart';
import 'package:food_delivery/components/custum_button.dart';
import 'package:food_delivery/models/food_model.dart';
import 'package:food_delivery/models/restoraunt.dart';
import 'package:provider/provider.dart';

class FoodDetailPage extends StatefulWidget {
  FoodDetailPage({super.key, required this.food}) {
    for (AddOn addon in food.availbleAddons) {
      selectedAddons[addon] = false;
    }
  }

  final FoodModel food;

  final Map<AddOn, bool> selectedAddons = {};

  @override
  State<FoodDetailPage> createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> {
  void addToCart(FoodModel food, Map<AddOn, bool> selectedAddOns) {
    Navigator.pop(context);
    List<AddOn> currentlySelectedAddons = [];

    for (AddOn addon in widget.food.availbleAddons) {
      if (widget.selectedAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    child: Hero(
                      tag: widget.food.imagePath,
                      child: Image.asset(
                        widget.food.imagePath,
                        height: 400,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.food.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        '\$' + widget.food.price.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.food.description,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Divider(
                        indent: 10,
                        endIndent: 15,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Add- ons",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Theme.of(context).colorScheme.secondary,
                            )),
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: widget.food.availbleAddons.length,
                          itemBuilder: (context, index) {
                            AddOn addOn = widget.food.availbleAddons[index];
                            return CheckboxListTile(
                              title: Text(addOn.name),
                              subtitle: Text(
                                '\$' + addOn.price.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                              value: widget.selectedAddons[addOn],
                              onChanged: (value) {
                                setState(() {
                                  widget.selectedAddons[addOn] = value!;
                                });
                              },
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
                MyButton(
                    ontap: () => addToCart(widget.food, widget.selectedAddons),
                    text: "Add to Cart"),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
        SafeArea(
          child: Opacity(
            opacity: 0.6,
            child: Container(
              margin: const EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  shape: BoxShape.circle),
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  Icons.arrow_back_ios_rounded,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
