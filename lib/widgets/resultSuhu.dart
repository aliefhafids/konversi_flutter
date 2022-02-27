import 'package:flutter/material.dart';

class ResultSuhu extends StatelessWidget {
  const ResultSuhu({
    Key? key,
    required this.hasil,
    required this.title,
  }) : super(key: key);

  final double hasil;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$title',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          '$hasil',
          style: TextStyle(fontSize: 30),
        ),
      ],
    );
  }
}