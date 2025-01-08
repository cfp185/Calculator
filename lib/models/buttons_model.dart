import 'package:flutter/material.dart';

class ButtonModel {
  String label;
  Color backgroundColor;
  Color textColor;
  double fontSize;
  bool isWide;

  ButtonModel({
    required this.label,
    this.backgroundColor = const Color.fromARGB(255, 45, 45, 45),
    this.textColor = Colors.white,
    this.fontSize = 35,
    this.isWide = false,
  });

  static List<ButtonModel> getButton() {
    return [
      ButtonModel(
        label: 'AC',
        backgroundColor: Color.fromARGB(255, 169, 168, 168),
        textColor: Colors.black,
        fontSize: 23
      ),
      ButtonModel(
        label: '+/-',
        backgroundColor: Color.fromARGB(255, 169, 168, 168),
        textColor: Colors.black,
        fontSize: 23
      ),
      ButtonModel(
        label: '%',
        backgroundColor: Color.fromARGB(255, 169, 168, 168),
        textColor: Colors.black,
        fontSize: 23
      ),
      ButtonModel(
        label: '÷',
        backgroundColor: Colors.orange,
        textColor: Colors.white
      ),
      ButtonModel(
        label: '7',
        backgroundColor: Color.fromARGB(255, 47, 47, 47),
        textColor: Colors.white
      ),
      ButtonModel(
        label: '8',
        backgroundColor: Color.fromARGB(255, 47, 47, 47),
        textColor: Colors.white
      ),
      ButtonModel(
        label: '9',
        backgroundColor: Color.fromARGB(255, 47, 47, 47),
        textColor: Colors.white
      ),
      ButtonModel(
        label: '×',
        backgroundColor: Colors.orange,
        textColor: Colors.white
      ),
      ButtonModel(
        label: '4',
        backgroundColor: Color.fromARGB(255, 47, 47, 47),
        textColor: Colors.white
      ),
      ButtonModel(
        label: '5',
        backgroundColor: Color.fromARGB(255, 47, 47, 47),
        textColor: Colors.white
      ),
      ButtonModel(
        label: '6',
        backgroundColor: Color.fromARGB(255, 47, 47, 47),
        textColor: Colors.white
      ),
      ButtonModel(
        label: '-',
        backgroundColor: Colors.orange,
        textColor: Colors.white
      ),
      ButtonModel(
        label: '1',
        backgroundColor: Color.fromARGB(255, 47, 47, 47),
        textColor: Colors.white
      ),
      ButtonModel(
        label: '2',
        backgroundColor: Color.fromARGB(255, 47, 47, 47),
        textColor: Colors.white
      ),
      ButtonModel(
        label: '3',
        backgroundColor: Color.fromARGB(255, 47, 47, 47),
        textColor: Colors.white
      ),
      ButtonModel(
        label: '+',
        backgroundColor: Colors.orange,
        textColor: Colors.white
      ),
      ButtonModel(
        label: '0',
        backgroundColor: Color.fromARGB(255, 47, 47, 47),
        textColor: Colors.white,
        isWide: true
      ),
      ButtonModel(
        label: ',',
        backgroundColor: Color.fromARGB(255, 47, 47, 47),
        textColor: Colors.white
      ),
      ButtonModel(
        label: '=',
        backgroundColor: Colors.orange,
        textColor: Colors.white
      )
    ];
  }
}