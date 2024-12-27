import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end, // Align buttons to the bottom.
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0), // Add padding around the layout.
              child: Column(
                mainAxisSize: MainAxisSize.min, // Prevent Column from expanding unnecessarily.
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildCalculatorButton(
                        'AC',
                        backgroundColor: Color.fromARGB(255, 169, 168, 168),
                        textColor: Colors.black,
                        fontSize: 30,
                      ),
                      buildCalculatorButton(
                        '+/-',
                        backgroundColor: Color.fromARGB(255, 169, 168, 168),
                        textColor: Colors.black,
                        fontSize: 30,
                      ),
                      buildCalculatorButton(
                        '%',
                        backgroundColor: Color.fromARGB(255, 169, 168, 168),
                        textColor: Colors.black,
                        fontSize: 30,
                      ),
                      buildCalculatorButton('÷',
                        backgroundColor: Colors.orange),
                    ],
                  ),
                  const SizedBox(height: 10), // Add spacing between rows.
                  // Row 2
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Evenly space buttons.
                    children: [
                      buildCalculatorButton('7'),
                      buildCalculatorButton('8'),
                      buildCalculatorButton('9'),
                      buildCalculatorButton('×',
                        backgroundColor: Colors.orange), // Operator button
                    ],
                  ),
                  const SizedBox(height: 10),
                  // Row 3
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildCalculatorButton('4'),
                      buildCalculatorButton('5'),
                      buildCalculatorButton('6'),
                      buildCalculatorButton('-',
                        backgroundColor: Colors.orange),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // Row 4
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildCalculatorButton('1'),
                      buildCalculatorButton('2'),
                      buildCalculatorButton('3'),
                      buildCalculatorButton('+',
                        backgroundColor: Colors.orange),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // Row 5
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildCalculatorButton(
                        '0',
                        isWide: true,
                      ),
                      buildCalculatorButton(','),
                      buildCalculatorButton('=',
                        backgroundColor: Colors.orange),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Helper function to build a calculator button.
Widget buildCalculatorButton(String label,
                            {Color backgroundColor = const Color.fromARGB(255, 45, 45, 45),
                            Color textColor = Colors.white,
                            double fontSize = 35,
                            bool isWide = false}) {
  return ElevatedButton(
    onPressed: () {
      // Perform button action.
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: backgroundColor,
      elevation: 4,
      shape: isWide
          ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)) // Wide button shape.
          : CircleBorder(), // Circular button shape.
      minimumSize: isWide ? const Size(175, 80) : const Size(80, 80), // Wide size for '0'.
    ),
    child: isWide
      ? Align(
        alignment: Alignment.centerLeft, // Align text to the right for '0'.
        child: Padding(
          padding: const EdgeInsets.only(right: 90.0), // Add padding for better alignment.
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
