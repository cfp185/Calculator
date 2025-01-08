import 'package:flutter/material.dart';
import '/models/buttons_model.dart';
import '/widgets/button_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<ButtonModel> buttons = ButtonModel.getButton();

  Widget buildButtonRow(List<ButtonModel> rowButtons) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: rowButtons.map((button) {
          return ElevatedButton(
            onPressed: () {
              // Handle button press.
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: button.backgroundColor,
              elevation: 4,
              shape: button.isWide
                  ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
                  : const CircleBorder(),
              minimumSize: button.isWide
                  ? const Size(185, 80)
                  : const Size(80, 80),
            ),
            child: Text(
              button.label,
              style: TextStyle(
                fontSize: button.fontSize,
                fontWeight: FontWeight.bold,
                color: button.textColor,
              ),
            ),
          );
        }).toList(),
      );
  }

  // Helper function to build a calculator button.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Row 1.
            buildButtonRow(buttons.sublist(0, 4)),
            // Space between each row.
            const SizedBox(height: 10),
            buildButtonRow(buttons.sublist(4,8)),
            const SizedBox(height: 10),
            buildButtonRow(buttons.sublist(8,12)),
            const SizedBox(height: 10),
            buildButtonRow(buttons.sublist(12,16)),
            const SizedBox(height: 10),
            buildButtonRow(buttons.sublist(16,19))
          ],
        ),
      ),
    );
  }
}