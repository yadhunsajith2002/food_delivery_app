import 'package:food_delivery/models/food_model.dart';

class CartItemModel {
  FoodModel food;
  List<AddOn> selectedAddons;
  int quantity;
  CartItemModel({
    required this.food,
    required this.selectedAddons,
    this.quantity = 1,
  });

  double get totalPrice {
    double addonPrice =
        selectedAddons.fold(0, (sum, addOn) => sum + addOn.price);
    return (food.price + addonPrice) * quantity;
  }
}
