import 'package:flutter/material.dart';
import 'package:namer_app/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
      ),
      debugShowCheckedModeBanner: false, // Hiding 'debug' banner.
      home: HomePage(),
    );
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.black,
    body: Center(
      child: Text(
        'Calculator',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    ),
  );
}

class CalculatorView extends StatefulWidget {
  const CalculatorView({Key? key}) : super(key : key);

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  @override
  String equation = "0";
  String result = "0";
  double equationFontSize = 38.0;
  double resultFontSize = 48.0;
  buttonPressed(String buttonText) {

  }

  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
