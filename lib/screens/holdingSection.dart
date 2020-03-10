import 'package:flutter/material.dart';
import 'package:stock_portfolio/screens/portfolioScreen.dart';
import '../models/holding.dart';

class HoldingSection extends StatelessWidget {
  final Holding holding;

  HoldingSection(this.holding);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _onHoldingTap(context, holding),
      child: Container(
        height: 100.0,
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey, width: 1.0)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(holding.name,
                          style: Theme.of(context).textTheme.subhead),
                      Text(holding.symbol,
                          style: Theme.of(context).textTheme.body1)
                    ],
                  ),
                  Row(
                    children: <Widget>[Text("Value "), Text("(Per cent)")],
                  ),
                  Row(
                    children: <Widget>[
                      Text("Shares: ",
                          style: Theme.of(context).textTheme.body1),
                      Text(holding.shares.toStringAsFixed(0),
                          style: Theme.of(context).textTheme.subhead)
                    ],
                  ),
                  Row(
                    children: [
                      Text("Costs: "),
                      Text("\$" + holding.cost.toStringAsFixed(2))
                    ],
                  ),
                ]),
            Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Profit/Loss",
                    style: Theme.of(context).textTheme.title,
                  ),
                  Text("Percent"),
                ]),
          ],
        ),
      ),
    );
  }

  _onHoldingTap(BuildContext context, Holding holding) {
    Navigator.pushNamed(context, HoldingScreenRoute,
        arguments: {"holding": holding});
  }
}
