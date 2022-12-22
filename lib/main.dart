import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget>[
        GridBox(flex: 1),
        GridColumn(
          flex: 1,
          children: <Widget>[
            GridBox(flex: 1),
            GridBox(flex: 1),
            GridRow(
              flex: 1,
              children: <Widget>[
                GridBox(flex: 1),
                GridBox(flex: 1),
              ],
            )
          ],
        ),
      ],
    );
  }
}

class GridRow extends StatelessWidget {
  final int flex;

  final List<Widget> children;

  const GridRow({required this.flex, required this.children, super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      flex: flex,
      child: Row(
        children: children,
      ),
    );
  }
}

class GridColumn extends StatelessWidget {
  final int flex;

  final List<Widget> children;

  const GridColumn({required this.flex, required this.children, super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      flex: flex,
      child: Column(
        children: children,
      ),
    );
  }
}

class GridBox extends StatelessWidget {
  final int flex;

  const GridBox({required this.flex, super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.orange,
          ),
        ),
      ),
    );
  }
}
