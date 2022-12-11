import 'package:flutter/material.dart';
import 'package:putahe/ingredientSaved/savedIngredients.dart';

import 'homepage.dart';

void main() => runApp(const SavedIngredients());

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Login UI",
      home: Scaffold(
        body: const MyHomepage(),
      ),
    );
  }
}
