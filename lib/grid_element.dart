import 'package:flutter/material.dart';

class GridElement extends StatelessWidget {
  final int flex;

  final double? height;

  final double? width;

  final Widget? child;

  const GridElement({required this.flex, required this.child, this.height, this.width, super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          height: height,
          width: width,
          child: FittedBox(
            fit: BoxFit.contain,
            child: child,
          ),
        ),
      ),
    );
  }
}
