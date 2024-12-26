import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Calculator App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row( // Use Row to place buttons horizontally
        mainAxisAlignment: MainAxisAlignment.center, // Align buttons to the center
        children: [
          ElevatedButton(
            onPressed: () {
              // Perform an action when the first button is pressed.
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 45, 45, 45),
              elevation: 4,
              shape: const CircleBorder(),
              minimumSize: const Size(80, 80),
            ),
            child: const Text(
              '1',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 20), // Add spacing between the buttons
          ElevatedButton(
            onPressed: () {
              // Perform an action when the second button is pressed.
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 45, 45, 45),
              elevation: 4,
              shape: const CircleBorder(),
              minimumSize: const Size(80, 80),
            ),
            child: const Text(
              '2',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 20), // Add spacing between the buttons
          ElevatedButton(
            onPressed: () {
              // Perform an action when the second button is pressed.
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 45, 45, 45),
              elevation: 4,
              shape: const CircleBorder(),
              minimumSize: const Size(80, 80),
            ),
            child: const Text(
              '3',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 20), // Add spacing between the buttons
          ElevatedButton(
            onPressed: () {
              // Perform an action when the second button is pressed.
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 252, 141, 5),
              elevation: 4,
              shape: const CircleBorder(),
              minimumSize: const Size(80, 80),
            ),
            child: const Text(
              '+',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
