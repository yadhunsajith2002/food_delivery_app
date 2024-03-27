import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function() ontap;
  final String text;

  const MyButton({
    super.key,
    required this.ontap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 80,
        margin: const EdgeInsets.symmetric(horizontal: 25),
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(15)),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.inversePrimary),
        )),
      ),
    );
  }
}
