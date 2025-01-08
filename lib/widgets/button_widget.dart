import 'package:flutter/material.dart';

Widget buildCalculatorButton(
  String label, {
  Color backgroundColor = const Color.fromARGB(255, 45, 45, 45),
  Color textColor = Colors.white,
  double fontSize = 35,
  bool isWide = false,
}) {
  return ElevatedButton(
    onPressed: () {
      // Perform button action
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: backgroundColor,
      elevation: 4,
      shape: isWide
          ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
          : const CircleBorder(),
      minimumSize: isWide ? const Size(175, 80) : const Size(80, 80),
    ),
    child: isWide
        ? Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(right: 90.0),
              child: Text(
                label,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
            ),
          )
        : Text(
            label,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
  );
}
