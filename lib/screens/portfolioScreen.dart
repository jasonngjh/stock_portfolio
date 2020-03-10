import 'package:flutter/material.dart';
import 'package:stock_portfolio/screens/holdingScreen.dart';
import 'holdingSection.dart';
import 'summarySection.dart';
import '../models/portfolio.dart';

const PortfolioScreenRoute = '/';
const HoldingScreenRoute = '/holding_screen';

class PortfolioScreen extends StatefulWidget {
  @override
  _PortfolioScreenState createState() => new _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  @override
  Widget build(BuildContext context) {
    final portfolios = Portfolio.fetchAll();
    final portfolio = portfolios.first;

    return MaterialApp(
      onGenerateRoute: _routes(),
      home: Scaffold(
          body: SafeArea(
              minimum: const EdgeInsets.all(15.0),
              child: ListView(children: <Widget>[
                Text(
                  portfolio.name,
                  style: Theme.of(context).textTheme.title,
                ),
                SizedBox(height: 20.0),
                SummarySection(portfolio),
                SizedBox(height: 15.0),
                Column(
                  children: []..addAll(holdingSections(portfolio)),
                ),
              ]))),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case HoldingScreenRoute:
          screen = HoldingScreen(arguments['holding']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  List<Widget> holdingSections(Portfolio portfolio) {
    return portfolio.holdings.map((fact) => HoldingSection(fact)).toList();
  }
}
