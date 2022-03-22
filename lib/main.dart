import 'package:flutter/material.dart';
import 'package:parcial2electiva2y3/pages/RootApp.dart';

void main() {
  runApp(ParcialUnidadII());
}

class ParcialUnidadII extends StatelessWidget {
  const ParcialUnidadII({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      /* title: 'Flutter Demo',
      home: Text.rich(TextSpan(text: "Hola muindo")), */
      home: RootApp(),
    );
  }
}
