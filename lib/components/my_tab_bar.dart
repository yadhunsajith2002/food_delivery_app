import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_model.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({
    super.key,
    required this.controller,
  });

  final TabController controller;

  List<Tab> _buildCategoryTab() {
    return FoodCategory.values
        .map((e) => Tab(
              text: e.toString().split('.').last,
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: controller,
        tabs: _buildCategoryTab(),
      ),
    );
  }
}
