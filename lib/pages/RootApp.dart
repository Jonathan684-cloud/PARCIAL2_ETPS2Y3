import 'package:flutter/material.dart';
import 'package:parcial2electiva2y3/components/getRootBody.dart';
import 'package:parcial2electiva2y3/template/AppBar.dart';

class RootApp extends StatefulWidget {
  RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: getAppBar(),
      ),
      body: getRootBody(),
    );
  }
}
