import 'package:flutter/material.dart';
import 'package:gasolina/home_page.dart';

void main() {
  runApp(const Gasolina());
}

class Gasolina extends StatelessWidget {
  const Gasolina({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Álcoll ou Gasolina",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const HomePage());
  }
}
