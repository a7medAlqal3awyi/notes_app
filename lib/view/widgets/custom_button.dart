import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
    this.isLoading = false,
  });

  final void Function()? onTap;
  final bool isLoading;

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
        child: Center(
            child: isLoading
                ? const SizedBox(
                    width: 25,
                    height: 25,
                    child: CircularProgressIndicator(
                      color: Colors.black,
                      strokeWidth: 7,
                    ),
                  )
                : const Text(
                    "Add",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  )),
      ),
    );
  }
}
