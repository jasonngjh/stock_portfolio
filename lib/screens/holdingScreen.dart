import 'package:flutter/material.dart';
import '../models/holding.dart';

class HoldingScreen extends StatelessWidget {
  final Holding _holding;

  HoldingScreen(this._holding);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_holding.name),
        ),
        body: SafeArea(
            child: Column(
          children: <Widget>[
            Text(_holding.name),
          ],
        )));
  }
}
