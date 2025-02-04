import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ElevatedButtonWidget extends StatelessWidget {
  ElevatedButtonWidget(
      {super.key, required this.onPressed, required this.text});
  void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          minimumSize: const Size(60, 50)),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontFamily: "Kanit-Medium",
        ),
      ),
    );
  }
}
