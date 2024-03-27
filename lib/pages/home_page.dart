import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_current_location.dart';
import 'package:food_delivery/components/my_description_box.dart';
import 'package:food_delivery/components/my_drawer.dart';
import 'package:food_delivery/components/my_food_tile.dart';
import 'package:food_delivery/components/my_tab_bar.dart';
import 'package:food_delivery/components/sliver_appbar.dart';
import 'package:food_delivery/models/food_model.dart';
import 'package:food_delivery/models/restoraunt.dart';
import 'package:food_delivery/pages/food_details_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<FoodModel> _filterMenuByCategory(
      FoodCategory category, List<FoodModel> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  List<Widget> getFoodInThisCategory(List<FoodModel> fullMenu) {
    return FoodCategory.values.map((category) {
      List<FoodModel> categoryMenu = _filterMenuByCategory(category, fullMenu);
      return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        itemCount: categoryMenu.length,
        itemBuilder: (context, index) {
          final food = categoryMenu[index];
          return Foodtile(
            food: food,
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FoodDetailPage(food: food),
                )),
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      drawer: const MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                MySliverAppBar(
                  title: MyTabBar(controller: _tabController),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Divider(
                        indent: 10,
                        endIndent: 15,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      MyCurrentLocation(),
                      const DescriptionBox()
                    ],
                  ),
                ),
              ],
          body: Consumer<Restaurant>(
            builder: (context, value, child) => TabBarView(
                controller: _tabController,
                children: getFoodInThisCategory(value.menu)),
          )),
    );
  }
}
