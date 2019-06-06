import 'package:flutter/material.dart';
import 'dashboard.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Dashboard(),
      backgroundColor: Colors.white,
    );
  }
}
