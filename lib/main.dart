import 'package:flutter/material.dart';
import 'package:grid_builder/grid_box.dart';
import 'package:grid_builder/grid_column.dart';
import 'package:grid_builder/grid_row.dart';
import 'package:grid_builder/grid_space.dart';

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
                GridSpace(flex: 1),
                GridBox(flex: 1),
              ],
            )
          ],
        ),
      ],
    );
  }
}