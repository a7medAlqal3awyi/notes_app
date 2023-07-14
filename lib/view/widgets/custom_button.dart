import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 50,
        decoration: const BoxDecoration(
          color: Colors.deepOrange,
        ),
        width: double.infinity,
        child: const Center(
            child: Text(
          "Add",
          style: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700),
        )),
      ),
    );
  }
}
