import 'package:flutter/material.dart';
import '../models/portfolio.dart';

class SummarySection extends StatelessWidget {
  final Portfolio _portfolio;

  SummarySection(this._portfolio);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("S\$ " + _portfolio.costValue.toStringAsFixed(2),
              style: Theme.of(context).textTheme.title),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Profit Loss", style: Theme.of(context).textTheme.subhead),
              Text("(per cent)", style: Theme.of(context).textTheme.subhead),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("Capital Gain"),
                  Text("\$10000", style: Theme.of(context).textTheme.body2),
                ],
              ),
              Column(children: <Widget>[
                Text("Dividends"),
                Text("\$10000", style: Theme.of(context).textTheme.body2),
              ]),
              Column(children: <Widget>[
                Text("Currency Gains"),
                Text("\$10000", style: Theme.of(context).textTheme.body2),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
