import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Note",
          style: TextStyle(fontSize: 28),
        ),
        const Spacer(),
        Container(
          width: 46,
          height: 46,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.05),
            borderRadius: BorderRadius.circular(
              16,
            ),
          ),
          child: const Center(
            child: Icon(
              Icons.search,
              size: 28,
            ),
          ),
        )
      ],
    );
  }
}
