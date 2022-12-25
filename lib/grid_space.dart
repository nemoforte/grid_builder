import 'package:flutter/material.dart';

class GridSpace extends StatelessWidget {
  final int flex;

  const GridSpace({required this.flex, super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(),
      ),
    );
  }
}