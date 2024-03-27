import 'package:flutter/material.dart';
import 'package:food_delivery/pages/cart_page.dart';

class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({
    Key? key,
    required this.child,
    required this.title,
  }) : super(key: key);
  final Widget child;
  final Widget title;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      pinned: true,
      floating: false,
      title: const Text("Sunset Dinner"),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartPage(),
                ));
          },
          icon: const Icon(Icons.shopping_cart),
        ),
      ],
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}
