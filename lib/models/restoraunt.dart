import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/models/cart_item_model.dart';
import 'package:food_delivery/models/food_model.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  final List<FoodModel> _menu = [
    // burgers
    FoodModel(
      name: "Cheese Burger",
      description:
          "A Juicy beef patty melted cheddar, lettuce,tomato, and a hint of onion and pickle",
      imagePath: "lib/images/burgers/cheese_burger.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availbleAddons: [
        AddOn(name: "Extra cheese", price: 0.55),
        AddOn(name: "Bacon", price: 1.55),
        AddOn(name: "Avacado", price: 3.55),
      ],
    ),
    FoodModel(
      name: "Aloh Burger",
      description:
          "A Juicy beef patty melted cheddar, lettuce,tomato, and a hint of onion and pickle",
      imagePath: "lib/images/burgers/aloh_burger.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availbleAddons: [
        AddOn(name: "Extra cheese", price: 0.55),
        AddOn(name: "Bacon", price: 1.55),
        AddOn(name: "Avacado", price: 3.55),
      ],
    ),
    FoodModel(
      name: "BBQ Burger",
      description:
          "A Juicy beef patty melted cheddar, lettuce,tomato, and a hint of onion and pickle",
      imagePath: "lib/images/burgers/bbq_burger.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availbleAddons: [
        AddOn(name: "Extra cheese", price: 0.55),
        AddOn(name: "Bacon", price: 1.55),
        AddOn(name: "Avacado", price: 3.55),
      ],
    ),
    FoodModel(
      name: "Bluemoon Burger",
      description:
          "A Juicy beef patty melted cheddar, lettuce,tomato, and a hint of onion and pickle",
      imagePath: "lib/images/burgers/bluemoon_burger.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availbleAddons: [
        AddOn(name: "Extra cheese", price: 0.55),
        AddOn(name: "Bacon", price: 1.55),
        AddOn(name: "Avacado", price: 3.55),
      ],
    ),
    FoodModel(
      name: "Veg Burger",
      description:
          "A Juicy beef patty melted cheddar, lettuce,tomato, and a hint of onion and pickle",
      imagePath: "lib/images/burgers/veg_burger.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availbleAddons: [
        AddOn(name: "Extra cheese", price: 0.55),
        AddOn(name: "Bacon", price: 1.55),
        AddOn(name: "Avacado", price: 3.55),
      ],
    ),

    // desserts

    FoodModel(
      name: "Choclate Dessert",
      description:
          "A Juicy beef patty melted cheddar, lettuce,tomato, and a hint of onion and pickle",
      imagePath: "lib/images/desserts/dessert1.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availbleAddons: [
        AddOn(name: "Extra cheese", price: 0.55),
        AddOn(name: "Bacon", price: 1.55),
        AddOn(name: "Avacado", price: 3.55),
      ],
    ),
    FoodModel(
      name: "StrawBerry Icecream",
      description:
          "A Juicy beef patty melted cheddar, lettuce,tomato, and a hint of onion and pickle",
      imagePath: "lib/images/desserts/dessert2.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availbleAddons: [
        AddOn(name: "Extra cheese", price: 0.55),
        AddOn(name: "Bacon", price: 1.55),
        AddOn(name: "Avacado", price: 3.55),
      ],
    ),
    FoodModel(
      name: "Falooda",
      description:
          "A Juicy beef patty melted cheddar, lettuce,tomato, and a hint of onion and pickle",
      imagePath: "lib/images/desserts/dessert3.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availbleAddons: [
        AddOn(name: "Extra cheese", price: 0.55),
        AddOn(name: "Bacon", price: 1.55),
        AddOn(name: "Avacado", price: 3.55),
      ],
    ),
    FoodModel(
      name: "Mixed Fruit",
      description:
          "A Juicy beef patty melted cheddar, lettuce,tomato, and a hint of onion and pickle",
      imagePath: "lib/images/desserts/dessert4.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availbleAddons: [
        AddOn(name: "Extra cheese", price: 0.55),
        AddOn(name: "Bacon", price: 1.55),
        AddOn(name: "Avacado", price: 3.55),
      ],
    ),
    FoodModel(
      name: "ButterScotch",
      description:
          "A Juicy beef patty melted cheddar, lettuce,tomato, and a hint of onion and pickle",
      imagePath: "lib/images/desserts/dessert5.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availbleAddons: [
        AddOn(name: "Extra cheese", price: 0.55),
        AddOn(name: "Bacon", price: 1.55),
        AddOn(name: "Avacado", price: 3.55),
      ],
    ),

    // Drinks
    FoodModel(
      name: "Iced Coffee",
      description: "Refreshing iced coffee with a hint of caramel.",
      imagePath: "lib/images/drinks/drinks1.jpg",
      price: 2.49,
      category: FoodCategory.drinks,
      availbleAddons: [
        AddOn(name: "Whipped Cream", price: 0.75),
        AddOn(name: "Vanilla Syrup", price: 0.55),
      ],
    ),
    FoodModel(
      name: "Lemonade",
      description: "Cool and tangy lemonade with a splash of mint.",
      imagePath: "lib/images/drinks/drinks2.jpg",
      price: 1.99,
      category: FoodCategory.drinks,
      availbleAddons: [
        AddOn(name: "Strawberry Flavor", price: 0.95),
        AddOn(name: "Lemon Slice", price: 0.25),
      ],
    ),
    FoodModel(
      name: "Cold Coffee",
      description: "Cool and tangy lemonade with a splash of mint.",
      imagePath: "lib/images/drinks/drinks3.jpg",
      price: 1.99,
      category: FoodCategory.drinks,
      availbleAddons: [
        AddOn(name: "Strawberry Flavor", price: 0.95),
        AddOn(name: "Lemon Slice", price: 0.25),
      ],
    ),
    FoodModel(
      name: "Hot Mlk",
      description: "Cool and tangy lemonade with a splash of mint.",
      imagePath: "lib/images/drinks/drinks4.jpg",
      price: 1.99,
      category: FoodCategory.drinks,
      availbleAddons: [
        AddOn(name: "Strawberry Flavor", price: 0.95),
        AddOn(name: "Lemon Slice", price: 0.25),
      ],
    ),
    FoodModel(
      name: "Milk Shake",
      description: "Cool and tangy lemonade with a splash of mint.",
      imagePath: "lib/images/drinks/drinks5.jpg",
      price: 1.99,
      category: FoodCategory.drinks,
      availbleAddons: [
        AddOn(name: "Strawberry Flavor", price: 0.95),
        AddOn(name: "Lemon Slice", price: 0.25),
      ],
    ),
    // Salads
    FoodModel(
      name: "Caesar Salad",
      description: "Classic Caesar salad with crisp romaine lettuce.",
      imagePath: "lib/images/salads/salad1.jpg",
      price: 4.99,
      category: FoodCategory.salads,
      availbleAddons: [
        AddOn(name: "Grilled Chicken", price: 2.75),
        AddOn(name: "Shaved Parmesan", price: 1.25),
      ],
    ),
    FoodModel(
      name: "Greek Salad",
      description: "Fresh Greek salad with feta cheese and olives.",
      imagePath: "lib/images/salads/salad2.jpg",
      price: 5.49,
      category: FoodCategory.salads,
      availbleAddons: [
        AddOn(name: "Red Onion", price: 0.45),
        AddOn(name: "Artichoke Hearts", price: 1.95),
      ],
    ),
    FoodModel(
      name: "Indian Salad",
      description: "Classic Caesar salad with crisp romaine lettuce.",
      imagePath: "lib/images/salads/salad3.jpg",
      price: 4.99,
      category: FoodCategory.salads,
      availbleAddons: [
        AddOn(name: "Grilled Chicken", price: 2.75),
        AddOn(name: "Shaved Parmesan", price: 1.25),
      ],
    ),
    FoodModel(
      name: "Spicy Salad",
      description: "Fresh Greek salad with feta cheese and olives.",
      imagePath: "lib/images/salads/salad4.jpg",
      price: 5.49,
      category: FoodCategory.salads,
      availbleAddons: [
        AddOn(name: "Red Onion", price: 0.45),
        AddOn(name: "Artichoke Hearts", price: 1.95),
      ],
    ),
    FoodModel(
      name: "Chilly Salad",
      description: "Fresh Greek salad with feta cheese and olives.",
      imagePath: "lib/images/salads/salad5.jpg",
      price: 5.49,
      category: FoodCategory.salads,
      availbleAddons: [
        AddOn(name: "Red Onion", price: 0.45),
        AddOn(name: "Artichoke Hearts", price: 1.95),
      ],
    ),

    // Side Dishes
    FoodModel(
      name: "Garlic Bread",
      description: "Warm garlic breadsticks with melted butter.",
      imagePath: "lib/images/sides/side1.jpg",
      price: 3.49,
      category: FoodCategory.sides,
      availbleAddons: [
        AddOn(name: "Mozzarella Cheese", price: 1.25),
        AddOn(name: "Marinara Sauce", price: 0.75),
      ],
    ),
    FoodModel(
      name: "Onion Rings",
      description: "Crispy onion rings served with ketchup.",
      imagePath: "lib/images/sides/side2.jpg",
      price: 3.99,
      category: FoodCategory.sides,
      availbleAddons: [
        AddOn(name: "Ranch Dressing", price: 0.95),
        AddOn(name: "Spicy Seasoning", price: 0.55),
      ],
    ),
    FoodModel(
      name: "Porotta with Beef",
      description: "Crispy onion rings served with ketchup.",
      imagePath: "lib/images/sides/side3.jpg",
      price: 3.99,
      category: FoodCategory.sides,
      availbleAddons: [
        AddOn(name: "Ranch Dressing", price: 0.95),
        AddOn(name: "Spicy Seasoning", price: 0.55),
      ],
    ),
    FoodModel(
      name: "Dosa",
      description: "Crispy onion rings served with ketchup.",
      imagePath: "lib/images/sides/side4.jpg",
      price: 3.99,
      category: FoodCategory.sides,
      availbleAddons: [
        AddOn(name: "Ranch Dressing", price: 0.95),
        AddOn(name: "Spicy Seasoning", price: 0.55),
      ],
    ),
    FoodModel(
      name: "Thanthoori",
      description: "Crispy onion rings served with ketchup.",
      imagePath: "lib/images/sides/side5.jpg",
      price: 3.99,
      category: FoodCategory.sides,
      availbleAddons: [
        AddOn(name: "Ranch Dressing", price: 0.95),
        AddOn(name: "Spicy Seasoning", price: 0.55),
      ],
    ),
  ];

  List<FoodModel> get menu => _menu;

  //User CArt

  List<CartItemModel> _cart = [];

  List<CartItemModel> get cart => _cart;

  //add to cart

  void addToCart(FoodModel food, List<AddOn> selectedAddons) {
    CartItemModel? cartItem = _cart.firstWhereOrNull((item) {
      //check fooditem are the same
      bool isSmaefood = item.food == food;
      // check if the list of selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSmaefood && isSameAddons;
    });
//if item already exixts, increase its quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }
    // otherwise add a new cart item to the cart
    else {
      _cart.add(CartItemModel(
        food: food,
        selectedAddons: selectedAddons,
      ));
    }
    notifyListeners();
  }

  //remove from cart

  void removeFromCart(CartItemModel cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

// get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItemModel cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (AddOn addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get total no.of items in cart

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItemModel cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // clear cart

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

// generate a receipt

  String displayCartReceipt() {
    final receipt = StringBuffer();

    receipt.writeln("Here's your receipt");
    receipt.writeln();
    String formmattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formmattedDate);
    receipt.writeln();

    receipt.writeln("-----------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt
            .writeln("   Add-ons: ${_formatAddOns(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("-----------");
    receipt.writeln();
    receipt.writeln("Total Items : ${getTotalItemCount()}");
    receipt.writeln("Total Price : ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

//format double into money

  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }
  //format list of addons into a string summary

  String _formatAddOns(List<AddOn> addon) {
    return addon
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
