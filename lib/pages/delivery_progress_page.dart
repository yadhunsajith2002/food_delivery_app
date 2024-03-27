import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_receipt.dart';

class DeliveryProgressPage extends StatelessWidget {
  const DeliveryProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Delivery in Progress.."),
      ),
      body: const Column(
        children: [MyReceipt()],
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
    );
  }

  Widget _buildBottomNavBar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                shape: BoxShape.circle),
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Yadhun ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              Text(
                "Driver ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.primary),
              )
            ],
          ),
          Spacer(),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    shape: BoxShape.circle),
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.message)),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    shape: BoxShape.circle),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.phone,
                      color: Colors.green,
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
