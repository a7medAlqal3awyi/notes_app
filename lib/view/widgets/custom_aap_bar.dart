import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text, required this.icon});
  final String text;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
         text,
          style: const TextStyle(fontSize: 28),
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
          child:  Center(
            child: icon
          ),
        )
      ],
    );
  }
}
